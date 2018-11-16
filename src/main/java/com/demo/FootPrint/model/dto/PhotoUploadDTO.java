package com.demo.FootPrint.model.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * @program: softwork-project
 * @description: 照片上传实体
 * @author: Yyf
 * @create: 2018-11-13 16:51
 **/
@Data
@ApiModel(description = "照片上传传输对象")
public class PhotoUploadDTO {

    @NotNull
    @Size(min = 1, max = 20)
    @ApiModelProperty(required = true, name = "标签", example = "福州大学!")
    private String label;

    // 当用户拒绝获取地理位置时为空
    @ApiModelProperty(name = "经度", example = "119.3")
    private Double longitude;

    @ApiModelProperty(name = "纬度", example = "26.08")
    private Double latitude;

    @ApiModelProperty(required = true, name = "省份", example = "福建")
    private String province;

    public PhotoUploadDTO() {

    }

}
