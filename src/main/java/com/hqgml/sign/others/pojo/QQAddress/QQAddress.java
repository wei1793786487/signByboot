package com.hqgml.sign.others.pojo.QQAddress;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Auto-generated: 2020-07-27 12:59:59
 *
 * @author www.jsons.cn
 * @website http://www.jsons.cn/json2java/
 */
public class QQAddress {

    private int status;
    private String message;
    private int count;
    private List<Data> data;
    @JsonProperty("request_id")
    private String requestId;


    public void setStatus(int status) {
        this.status = status;
    }

    public int getStatus() {
        return status;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getMessage() {
        return message;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getCount() {
        return count;
    }

    public void setData(List<Data> data) {
        this.data = data;
    }

    public List<Data> getData() {
        return data;
    }

    public void setRequestId(String requestId) {
        this.requestId = requestId;
    }

    public String getRequestId() {
        return requestId;
    }

}