package com.demo.FootPrint.model.vo;

import lombok.Data;

/**
 * @program: softwork-project
 * @description: 照片上传视图
 * @author: Yyf
 * @create: 2018-11-13 17:05
 **/
@Data
public class PhotoUploadVO {

    private String id;

    private String key;

    private String uploadToken;

    public PhotoUploadVO(){

    }
}
