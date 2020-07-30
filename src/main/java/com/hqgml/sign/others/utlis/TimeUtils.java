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
public class TimeUtils {

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
        Date end = null;
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

    /**
     *  计算当前时间是否在某段时间的内
     * @param time 要计算的时间
     * @param disparity 距离 （分）
     * @return 是否在时间内
     */
    public static Boolean CalculateTime(String time,Integer disparity) {
        long nowTime = System.currentTimeMillis();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date setTime = null;
        try {
            setTime = sdf.parse(time);
        } catch (ParseException e) {
            e.printStackTrace();
            return false;
        }
        long reset = setTime.getTime();
        long dateDiff = nowTime - reset;
        if (dateDiff < 0) {
            return false;
        } else {
//            long dateTemp1 = dateDiff / 1000; // 秒
//            long dateTemp2 = dateTemp1 / 60; // 分钟
//            long dateTemp3 = dateTemp2 / 60; // 小时
//            long dateTemp4 = dateTemp3 / 24; // 天数
//            long dateTemp5 = dateTemp4 / 30; // 月数
//            long dateTemp6 = dateTemp5 / 12; // 年数
            Integer trans = 1000 * 60 ;
            long dateTemp1 = dateDiff / trans;
             if (dateTemp1>disparity||dateTemp1==disparity){
                 return  false;
             }else {
                 return true;
             }
        }

    }

    public static void main(String[] args) {
        Boolean aBoolean = CalculateTime("2020-04-20 23:00:00", 10);
        System.out.println(aBoolean);
    }
}
