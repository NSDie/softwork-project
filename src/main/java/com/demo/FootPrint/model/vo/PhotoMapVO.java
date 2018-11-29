package com.demo.FootPrint.model.vo;

import lombok.Data;

/**
 * @program: softwork-project
 * @description: 照片地图视图
 * @author: Yyf
 * @create: 2018-11-14 20:29
 **/
@Data
public class PhotoMapVO {

    private Integer id;

    private String imgUrl;

    private Double longitude;

    private Double latitude;

    private String province;
}
