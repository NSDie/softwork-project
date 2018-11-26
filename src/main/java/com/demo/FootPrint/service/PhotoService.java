package com.demo.FootPrint.service;

import com.demo.FootPrint.model.dto.PhotoUpdateDTO;
import com.demo.FootPrint.model.dto.PhotoUploadBackDTO;
import com.demo.FootPrint.model.dto.PhotoUploadDTO;
import com.demo.FootPrint.model.vo.PhotoMapVO;
import com.demo.FootPrint.model.vo.PhotoMarkVO;
import com.demo.FootPrint.model.vo.PhotoUploadVO;

import java.util.List;

public interface PhotoService {


    /**
     * 照片上传
     *
     * @param userId
     * @return
     */
    PhotoUploadVO upload(PhotoUploadDTO photo , Integer userId);


    /**
     * 照片上传回调
     * @param photoUploadBackDTO
     */
    void uploadBack(PhotoUploadBackDTO photoUploadBackDTO);


    /**
     * 获取照片地图
     * @return 照片地图视图
     */
    List<PhotoMapVO> getMap(Integer userId);

    /**
     * 获取照片记录
     */
    List<PhotoMarkVO> getMark(Integer userId);

    /**
     * 删除照片
     * @param
     * @param photoId
     */
    void delete(Integer photoId,Integer userId);

    /**
     * 更新照片位置、省份
     * @param
     *
     */
    void updateLocal(PhotoUpdateDTO photoUpdateDTO);
}
