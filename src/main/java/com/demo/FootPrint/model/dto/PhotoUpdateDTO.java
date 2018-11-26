package com.demo.FootPrint.model.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * @program: softwork-project
 * @description: 照片更新实体
 * @author: Yyf
 * @create: 2018-11-25 20:33
 **/
@Data
@ApiModel(description = "照片更新实体")
public class PhotoUpdateDTO {

    @NotNull
    @ApiModelProperty(name = "照片ID", example = "1")
    private Integer id;

    // 当用户拒绝获取地理位置时为空
    @ApiModelProperty(name = "经度", example = "119.3")
    private Double longitude;

    @ApiModelProperty(name = "纬度", example = "26.08")
    private Double latitude;

    @ApiModelProperty(required = true, name = "省份", example = "福建")
    private String province;

    @ApiModelProperty(required = true, name = "城市", example = "福州")
    private String city;

    @ApiModelProperty(required = true, name = "时间", example = " ")
    private Long photoTime;

    public PhotoUpdateDTO() {

    }

}