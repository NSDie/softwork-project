package com.demo.FootPrint.service;

import com.demo.FootPrint.model.dto.PhotoUploadBackDTO;
import com.demo.FootPrint.model.dto.PhotoUploadDTO;
import com.demo.FootPrint.model.po.Photo;
import com.demo.FootPrint.model.vo.PhotoUploadVO;

public interface PhotoService {
    /**
     * 照片上传
     * @param photo
     * @param userId
     * @return
     */
    PhotoUploadVO upload(PhotoUploadDTO photo , Integer userId);

    /**
     * 照片上传回调
     * @param photoUploadBackDTO
     */
    void uploadBack(PhotoUploadBackDTO photoUploadBackDTO);

}
