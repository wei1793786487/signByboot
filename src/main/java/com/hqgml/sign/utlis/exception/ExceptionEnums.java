package com.hqgml.sign.utlis.exception;

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
    RESOUT_NOT_ONE(500, "结果集不唯一"),
    USER_ISHAVE(401, "该用户已经存在"),
    LOG_NOT_FIND(404, "日志未找到"),
    MEETING_NOT_FIND(404, "会议未找到"),
    PSRSON_NOT_FIND(404, "人员未找到"),
    NOT_HAVE_AUTHORITY(401,"权限不足"),
    LOFIN_ERROR(400,"账号或者密码错误"),
    EMPTY_ERROR(400,"输入项为空"),
    PASSWORD_ERROR(400,"密码必须包含字母与数字，且在6到18位之间"),
    UPDATE_ERROR(500,"更新异常"),
    UPDATEPASSWORD_ERROR(400,"密码错误"),
    MENU_NOT_FIND(404,"菜单没找到"),
    USER_NOT_USER(403,"用户不可用");
    private int code;
    private String Msg;
}
