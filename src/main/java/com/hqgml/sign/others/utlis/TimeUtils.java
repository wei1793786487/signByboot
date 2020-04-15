package com.hqgml.sign.others.utlis;

import lombok.extern.slf4j.Slf4j;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author Devil
 * @date 2020/1/25 3:40
 */
@Slf4j
public class TimeUtils  {

    /**
     * 判断时间是不是在该区间之内
     *
     * @param startDate
     * @param endDate
     * @return
     * @throws Exception
     */
    public static boolean hourMinuteBetween(String startDate, String endDate) {

        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");

        Date now = new Date();

        Date start = null;
        Date end=null;
        try {
            start = format.parse(startDate);
           end = format.parse(endDate);

        } catch (ParseException e) {
            e.printStackTrace();
            log.error("格式化异常");
            return false;
        }

        long nowTime = now.getTime();
        long startTime = start.getTime();
        long endTime = end.getTime();

        return nowTime >= startTime && nowTime <= endTime;
    }
}
