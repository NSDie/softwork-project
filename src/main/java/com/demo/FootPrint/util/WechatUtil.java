package com.demo.FootPrint.util;

import com.demo.FootPrint.config.WechatConfig;
import com.demo.FootPrint.constant.WechatApiConstant;
import com.demo.FootPrint.model.po.Jscode2session;
import com.demo.FootPrint.model.po.WechatError;
import com.demo.FootPrint.model.po.WechatUser;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.exc.UnrecognizedPropertyException;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.codec.binary.Base64;
import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.AlgorithmParameters;
import java.util.Arrays;

/**
 * @program: softwork-project
 * @description: 微信相关工具类
 * @author: Yyf
 * @create: 2018-11-11 19:33
 **/
@Slf4j
@Data
public class WechatUtil {

    private static WechatConfig wechatConfig;

    private static CloseableHttpClient client = HttpClients.createDefault();

    private static ObjectMapper mapper = new ObjectMapper();

    // 重试请求的间隔时间
    private static int retrySleepMillis = 1000;

    // 最大重试次数
    private static int maxRetryTimes = 5;

    // 初始化工具类,注入微信配置信息
    public static void init(WechatConfig wechatConfig) {
        WechatUtil.wechatConfig = wechatConfig;
        log.info("微信工具类初始化成功");
    }

    /**
     * 通过短期凭证换取长期凭证
     * @param code 登录时获取的微信短期凭证code
     * @return 微信长期凭证
     */
    public static Jscode2session getJscode2session(String code) {
        String jscode2SessionUrl = WechatApiConstant.JSCODE2SESSION
                .replace("$APPID", wechatConfig.getAppID())
                .replace("$SECRET", wechatConfig.getAppSecret())
                .replace("$JSCODE", code);
        return (Jscode2session) execute(jscode2SessionUrl, Jscode2session.class);
    }


    /**
     * Github项目wexin-java-tools魔改版本
     * 执行微信接口并获取返回的实体,当微信繁忙时等待 retrySleepMillis(ms)*2^(重试次数-1) 重新发起请求
     * @param url 微信接口地址
     * @param clazz 接口响应类
     * @return 接口响应对象
     */
    private static Object execute(String url, Class<?> clazz){
        int retryTimes = 0;
        do {
            HttpGet get = new HttpGet(url);
            try (CloseableHttpResponse response = client.execute(get)) {
                HttpEntity entity = response.getEntity();
                String json = EntityUtils.toString(entity, "utf-8");
                try{
                    return mapper.readValue(json, clazz);
                }catch (UnrecognizedPropertyException u){
                    // 解析失败:请求异常,返回WechatError实体
                    WechatError wechatErrorTest = mapper.readValue(json, WechatError.class);
                    // -1为微信服务繁忙,其他为逻辑错误
                    if (wechatErrorTest.getErrcode() == -1) {
                        // 重试
                        int sleepMillis = retrySleepMillis * (1 << retryTimes);
                        try {
                            log.info("微信系统繁忙,重试次数:" + retryTimes + ",等待时间:" + sleepMillis);
                            Thread.sleep(sleepMillis);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    } else {
                        log.info("接口请求异常:"+wechatErrorTest.getErrmsg());
                        return null;
                    }
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        } while (retryTimes++ < maxRetryTimes);
        log.info("微信服务异常");
        return null;
    }

    /**
     * Github项目wexin-java-tools魔改版本
     * AES解密获取用户数据
     * @param encryptedData 消息密文
     * @param ivStr         iv字符串
     */
    public static WechatUser decryptUser(String sessionKey, String encryptedData, String ivStr) {
        try {
            AlgorithmParameters params = AlgorithmParameters.getInstance("AES");
            params.init(new IvParameterSpec(Base64.decodeBase64(ivStr)));

            Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
            cipher.init(Cipher.DECRYPT_MODE, new SecretKeySpec(Base64.decodeBase64(sessionKey), "AES"), params);

            byte[] decrypted = cipher.doFinal(Base64.decodeBase64(encryptedData));
            int pad = (int) decrypted[decrypted.length - 1];
            if (pad < 1 || pad > 32) {
                pad = 0;
            }

            String userJson = new String(Arrays.copyOfRange(decrypted, 0, decrypted.length - pad), StandardCharsets.UTF_8);
            return mapper.readValue(userJson, WechatUser.class);
        } catch (Exception e) {
            throw new RuntimeException("AES解密失败", e);
        }
    }

}
