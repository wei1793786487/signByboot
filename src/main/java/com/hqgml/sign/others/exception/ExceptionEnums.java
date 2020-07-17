package com.hqgml.sign.others.exception;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

/**
 * @author Devil
 * @date 2019/12/18 21:03
 */
@NoArgsConstructor
@AllArgsConstructor
@Getter
public enum ExceptionEnums {
    USER_NOT_FIND(404, "用户没有找到"),
    USER_PASSWORD_ERROR(400, "密码输入错误"),
    REGIST_ERROR(500, "注册异常"),
    DELETE_ERROR(500, "删除异常"),
    ADDRESS_ERROR(500, "地点检索失败"),
    RESOUT_NOT_ONE(500, "结果集不唯一"),
    CLEAN_ROLE_EXCEPTION(500,"删除角色绑定异常"),
    META_ADD_ERROR(500, "meta添加失败"),
    USER_ISHAVE(401, "该用户已经存在"),
    READ_ERROR(400, "读取文件异常"),
    PERSON_NOT_FIND(400, "无人员信息"),
    INSERT_ERROR(400, "无人员信息"),
    FILED_ERROR(400, "参数不允许"),
    META_NOT_FIND(404, "meta未找到"),
    ROLE_NOT_FIND(400,"角色信息没找到"),
    PHONE_NOT_FIND(400, "无电话信息"),
    TPDO_NOT_FIND(400,"todo没有找到"),
    PHONE_RRROR(400, "联系方式格式不正确"),
    INSUFFICIENT_AUTHORITY(403, "权限不足"),
    PERSON_EXIST(401, "该姓名人员已经存在"),
    LOG_NOT_FIND(404, "日志未找到"),
    MEETING_ADD_ERROR(400, "会议添加异常"),
    MEETING_NOT_FIND(404, "会议未找到"),
    TIME_ERROR(404, "不在签到时间段内"),
    PSRSON_NOT_FIND(404, "人员未找到"),
    NOT_HAVE_AUTHORITY(401, "权限不足"),
    PARAMETER_ERROT(400, "参数错误"),
    PHONE_ERROT(400, "电话号码格式错误"),
    PERSON_IS_HAVE(400, "该人员已存在该会议"),
    LOFIN_ERROR(400, "账号或者密码错误"),
    EMPTY_ERROR(400, "输入项为空"),
    PASSWORD_ERROR(400, "密码必须包含字母与数字，且在6到18位之间"),
    UPDATE_ERROR(500, "更新异常"),
    UPDATE_TODO_ERROR(500, "更新TODO异常"),
    ADD_TODO_ERROR(500, "添加TODO异常"),
    ADD_MEAN_ERROR(500, "添加菜单异常"),
    SERVER_ERROR(500, "服务器异常"),
    FIlE_IS_NULL(400, "文件为空"),
    PERSON_NAME_IS_TOO_LONG(400, "文件名字过长"),
    FIlENAME_IS_NULL(400, "文件名为空"),
    SELECT_ERROR(400, "查询异常"),
    FIlTYPE_IS_ALLOW(400, "该类型文件不允许上传"),
    USER_NOT_lOGIN(403, "用户未登录"),
    UPDATEPASSWORD_ERROR(400, "密码错误"),
    UPDATEUSER_ERROR(400, "更新用户出现错误"),
    MENU_NOT_FIND(404, "菜单没找到"),
    USER_NOT_USE(403, "用户不可用");
    private int code;
    private String Msg;
}
