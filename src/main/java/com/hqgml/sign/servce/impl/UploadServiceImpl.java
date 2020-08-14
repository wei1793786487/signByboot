package com.hqgml.sign.servce.impl;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.poi.excel.ExcelReader;
import cn.hutool.poi.excel.ExcelUtil;
import com.hqgml.sign.mapper.MeetingPersionMapper;
import com.hqgml.sign.mapper.PersonsMapper;
import com.hqgml.sign.others.utlis.COSUtils;
import com.hqgml.sign.others.utlis.UserUtils;
import com.hqgml.sign.pojo.*;
import com.hqgml.sign.servce.*;
import com.hqgml.sign.others.exception.ExceptionEnums;
import com.hqgml.sign.others.exception.XxException;
import com.hqgml.sign.others.utlis.FileUtils;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * @author Devil
 * @date 2020/1/11 17:40
 * 文件上传
 */
@SuppressWarnings("all")
@Service
@Slf4j
public class UploadServiceImpl implements UploadService {


    @Autowired
    private PersonsService personsService;

    @Autowired
    private TenlentService tenlentServices;

    @Autowired
    private SysUserService sysUserService;

    @Autowired
    private MeetingService meetingService;

    @Autowired
    private MiniUserService miniUserService;

    @Autowired
    private COSUtils COSUtils;

    @Autowired
    private MeetingPersionMapper meetingPersionMapper;

    @Autowired
    private PersonsMapper personsMapper;

    @Value("${tenlent.cos.bucketName}")
    private String bucketName;

    @Value("${tenlent.region}")
    private String region;


    private final static List<String> ALLOWS = Arrays.asList("jpg", "png", "JPEG", "xls", "xlsx");
    private Boolean isAllow = false;


    /**
     * 人员添加
     *
     * @param file
     * @param request
     * @throws TencentCloudSDKException
     */
    @Override
    public String uploadPersion(MultipartFile file, HttpServletRequest request) throws TencentCloudSDKException {

        SysUser userByToken = UserUtils.getUserByToken(request);
        SysUser sysUser = sysUserService.findUserById(userByToken.getId());
        Persons persons = new Persons();

        //大小
            try {
                if (file.getSize() == 0) {
                    throw new XxException(ExceptionEnums.FIlE_IS_NULL);
                }
                String filename = file.getOriginalFilename();


                //空白名
                if (StringUtils.isBlank(filename)) {
                    throw new XxException(ExceptionEnums.FIlENAME_IS_NULL);
                }
                String suffix = FileUtils.suffix(file.getOriginalFilename());
                String personname = StrUtil.removeSuffixIgnoreCase(filename, suffix);
                Persons person = personsService.selectOneByUsername(personname);

                //数据库是否有该姓名人员
                if (person != null) {
                    throw new XxException(ExceptionEnums.PERSON_EXIST);
                }

                if (personname.length() > 10) {
                    throw new XxException(ExceptionEnums.PERSON_EXIST);
                }
                //后缀是否允许
                for (String allow : ALLOWS) {
                    if (StringUtils.contains(suffix, allow)) {
                        isAllow = true;
                    }
                }
                if (!isAllow) {
                    throw new XxException(ExceptionEnums.FIlTYPE_IS_ALLOW);
                }
                if (StringUtils.equals(suffix, "zip")) {
                    //TODO 为zip的操作，暂时不做完成
                } else {
                    String uuid = IdUtil.simpleUUID();
                    String key=uuid+ "."+ suffix;
                    COSUtils.addObject(key,file.getInputStream(),file.getSize());
                    String url="https://"+bucketName+".cos."+region+".myqcloud.com/"+key;
                    log.info("文件上传路径是{}",url);
                    persons.setPersonName(personname);
                    persons.setUrl(url);
                    persons.setAddTime(DateUtil.now());
                    persons.setAddId(userByToken.getId());
                    persons.setPhone("");
                    persons.setUuid(uuid);
                    persons.setBandType(0);
                    //创建人员
                    personsService.createPersion(persons);
                }
            } catch (IOException e) {
                log.error("文件上传异常", e);
                throw new XxException(ExceptionEnums.SERVER_ERROR);
            }
            try {
                tenlentServices.createPerson(sysUser.getId().toString(), persons.getPersonName(), persons.getUuid(),  persons.getUrl());
            } catch (TencentCloudSDKException e) {
                //先对异常进行处理
                String key = persons.getUrl().replaceAll("https://" + bucketName + ".cos." + region + ".myqcloud.com/", "");
                COSUtils.deleteObject(key);
                personsService.delectByuuid(persons.getUuid());
                //这里抛出去是因为要丢给springmvc去处理异常；
                throw e;
            } catch (InterruptedException e) {
                e.printStackTrace();
        }
        return persons.getUrl();
        }




    /**
     * 将人员添加进会员
     *
     * @param file
     */
    @Override
    public List<String> uploadPersionMeeting(MultipartFile file) {
        ExcelReader reader;
        List<String> list = new ArrayList<>();
        if (file.getSize() == 0) {
            throw new XxException(ExceptionEnums.FIlE_IS_NULL);
        }
        String filename = file.getOriginalFilename();


        //空白名
        if (StringUtils.isBlank(filename)) {
            throw new XxException(ExceptionEnums.FIlENAME_IS_NULL);
        }
        String suffix = FileUtils.suffix(file.getOriginalFilename());
        String meetingname = StrUtil.removeSuffixIgnoreCase(filename, suffix);
        //获取会议的名字获取会议的信息
        Meeting meeting = meetingService.findMeetingByName(meetingname);


        try {
            //读取表格数据
            reader = ExcelUtil.getReader(file.getInputStream());
        } catch (IOException e) {
            e.printStackTrace();
            log.error("读取失败，文件内容出错，{}", file.getOriginalFilename());
            throw new XxException(ExceptionEnums.READ_ERROR);
        }
        List<Map<String, Object>> maps = reader.readAll();
        for (Map<String, Object> map : maps) {
            String person = (String) map.get("姓名");

            Persons persons = personsMapper.selectOneByPersonName(person);
            if (persons == null) {
                list.add(person + "人员不存在");
            }
            MeetingPersion one = meetingPersionMapper.selectOneByMidAndPid(meeting.getId(), persons.getId());
            if (one != null) {
                list.add(person + "已存在该会议");
            } else {
                //添加
                MeetingPersion meetingPersion = new MeetingPersion();
                meetingPersion.setMid(meeting.getId());
                meetingPersion.setPid(persons.getId());
                meetingPersionMapper.insert(meetingPersion);
                list.add(person+"添加成功");
            }

        }
        return list;
    }

    @Override
    public List<String> uploadPhone(MultipartFile file) {
        String reg="^[1][3,4,5,7,8][0-9]{9}$";
        ExcelReader reader;
        List<String> list = new ArrayList<>();
        if (file.getSize() == 0) {
            throw new XxException(ExceptionEnums.FIlE_IS_NULL);
        }
        String filename = file.getOriginalFilename();

        //空白名
        if (StringUtils.isBlank(filename)) {
            throw new XxException(ExceptionEnums.FIlENAME_IS_NULL);
        }
        String suffix = FileUtils.suffix(file.getOriginalFilename());
        String meetingname = StrUtil.removeSuffixIgnoreCase(filename, suffix);

        try {
            //读取表格数据
            reader = ExcelUtil.getReader(file.getInputStream());
        } catch (IOException e) {
            e.printStackTrace();
            log.error("读取失败，文件内容出错，{}", file.getOriginalFilename());
            throw new XxException(ExceptionEnums.READ_ERROR);
        }
        List<Map<String, Object>> maps = reader.readAll();
        for (Map<String, Object> map : maps) {
            String personname = (String) map.get("姓名");
            Long _phone = (Long) map.get("电话");
            String phone=_phone+"";
            Persons person = personsMapper.selectOneByPersonName(personname);
            if (person == null) {
                list.add(personname + "人员不存在");
            }else {
                boolean isphone = phone.matches(reg);
                if (!isphone) {
                    list.add(personname + "电话不符合格式");
                } else {
                    Persons persons=new Persons();
                    persons.setPhone(phone);
                    persons.setId(person.getId());
                    personsService.updatePersonById(persons);
                    list.add(personname+"添加手机成功");
                }
            }

        }
        return list;
    }

    @Override
    public void uploadFace(MultipartFile files, VxUser user) throws IOException, TencentCloudSDKException, InterruptedException {
        if (files.getSize() == 0) {
            throw new XxException(ExceptionEnums.FIlE_IS_NULL);
        }
        String suffix = FileUtils.suffix(files.getOriginalFilename());
        String uuid = IdUtil.simpleUUID();
        String key=uuid+ "."+ suffix;
        COSUtils.addObject(key,files.getInputStream(),files.getSize());
        String url="https://"+bucketName+".cos."+region+".myqcloud.com/"+key;
        log.info("文件上传路径是{}",url);
        VxUser byid = miniUserService.findByid(user.getId());
        Persons persons = personsService.selectById(byid.getPId());
        persons.setUrl(key);
        personsService.updatePersonById(persons);
        tenlentServices.createPerson("0", persons.getPersonName(), persons.getUuid(), "http://www.hqgml.com/" + persons.getUrl());

    }

}

