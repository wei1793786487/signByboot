package com.hqgml.sign.utlis;

import com.github.qcloudsms.SmsSingleSender;
import com.github.qcloudsms.SmsSingleSenderResult;
import com.github.qcloudsms.httpclient.HTTPException;
import com.hqgml.sign.config.MsgProperties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.stereotype.Component;

import java.io.IOException;

/**
 * @author Devil
 * @date 2020/1/23 21:45
 */

@Component
@EnableConfigurationProperties(MsgProperties.class)
public class MsgUtils {

    @Autowired
    private MsgProperties msgProperties;


    /**
     * 群发通知短信
     * @param phone
     * @param params
     * @return
     */
    public SmsSingleSenderResult sendAllNotice(String phone, String[] params) {

        SmsSingleSender ssender = new SmsSingleSender(msgProperties.getAppId(), msgProperties.getAppKey());
        try {
            return ssender.sendWithParam("86", phone, msgProperties.getSendAllTemplateId(), params, msgProperties.getSign(), "", "");
        } catch (HTTPException | IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 单发通知短信
     * @param phone
     * @param params
     * @return
     */
    public SmsSingleSenderResult sendOneNotice(String phone, String[] params) {

        SmsSingleSender ssender = new SmsSingleSender(msgProperties.getAppId(), msgProperties.getAppKey());
        try {
            return ssender.sendWithParam("86", phone, msgProperties.getSendOneTemplateId(), params, msgProperties.getSign(), "", "");
        } catch (HTTPException | IOException e) {
            e.printStackTrace();
            return null;
        }
    }




}
