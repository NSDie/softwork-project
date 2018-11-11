package com.demo.FootPrint.util;

import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

/**
 * @program: softwork-project
 * @description: AES 对称加密工具类
 * @author: Yyf
 * @create: 2018-11-11 19:32
 **/
public class AESUtil {

    private static Cipher cipher = null;

    static{
        try {
            cipher = Cipher.getInstance("AES");
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
            e.printStackTrace();
        }
    }

    /**
     *
     * @param text 待加密的文本
     * @param password  密钥 必须为16, 24 or 32 bytes!
     * @return 加密后的文本
     */
    public static String encrypt(String text, String password){
        try {
            byte[] textByte = text.getBytes();
            Key key = new SecretKeySpec(password.getBytes(), "AES");
            cipher.init(Cipher.ENCRYPT_MODE, key);
            byte[] encryptedBytes = cipher.doFinal(textByte);
            return Base64.getEncoder()
                    .encodeToString(encryptedBytes);
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }

    }

    public static String decrypt(String text, String password){
        try{
            byte[] textByte = Base64.getDecoder()
                    .decode(text);
            Key key = new SecretKeySpec(password.getBytes(), "AES");
            cipher.init(Cipher.DECRYPT_MODE, key);
            byte[] decryptedBytes = cipher.doFinal(textByte);
            return new String(decryptedBytes);
        }catch (Exception ex){
            ex.printStackTrace();
            return null;
        }
    }

}
