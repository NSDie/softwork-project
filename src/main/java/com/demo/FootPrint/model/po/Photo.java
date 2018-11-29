package com.demo.FootPrint.model.po;

import lombok.Data;

/**
 * @program: softwork-project
 * @description: 照片实体
 * @author: Yyf
 * @create: 2018-11-13 16:27
 **/
@Data
public class Photo {
    private Integer id;

    private Integer userId;

    private Double longitude;

    private Double latitude;

    private String imgUrl;

    private Long time;

    private Integer praiseNum;

    private String province;

    private String city;

    private String label;

    private Long photoTime;
    /**
     * 上传成功or失败
     * 1：已上传
     * 0：未上传
     */
    private Byte visible;

    public Photo(){

    }
}
