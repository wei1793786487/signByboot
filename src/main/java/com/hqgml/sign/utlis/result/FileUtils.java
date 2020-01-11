package com.hqgml.sign.utlis.result;

/**
 * @author Devil
 * @date 2020/1/11 18:43
 */
public class FileUtils {

    /**
     * 获取后缀名
     * @param fileName
     * @return
     */
    public static String suffix(String fileName) {

        int begin = fileName.indexOf(".");
        int last = fileName.length();
        return fileName.substring(begin, last);

    }

}
