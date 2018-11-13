package com.demo.FootPrint.model.dto;

import lombok.Data;

import javax.validation.constraints.NotNull;

/**
 * @program: softwork-project
 * @description: 照片上传回调
 * @author: Yyf
 * @create: 2018-11-13 16:57
 **/
@Data
public class PhotoUploadBackDTO {
    @NotNull
    private String id;

    @NotNull
    private String encryptedId;

    public PhotoUploadBackDTO() {
    }

    public PhotoUploadBackDTO(String id, String encryptedId) {
        this.id = id;
        this.encryptedId = encryptedId;
    }
}
