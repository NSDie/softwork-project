package com.demo.FootPrint.service;

import com.demo.FootPrint.model.dto.PhotoUpdateDTO;
import com.demo.FootPrint.model.dto.PhotoUploadBackDTO;
import com.demo.FootPrint.model.dto.PhotoUploadDTO;
import com.demo.FootPrint.model.vo.PhotoMapVO;
import com.demo.FootPrint.model.vo.PhotoMarkVO;
import com.demo.FootPrint.model.vo.PhotoUploadVO;

import java.math.BigInteger;
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
    void updateLocal(PhotoUpdateDTO photoUpdateDTO, Integer userId);

    /**
     * 统计函数
     * @param userId
     * @param start_time
     * @param end_time
     * @return
     *  1.去过的省份数量
     *  2.去过的城市数量
     *  3.发过的照片数
     *  4.去过最多的省份
     *  5.去过最多的城市
     *  6.最东南西北的省份 4个数据按顺序
     *  7.最东南西北的城市 4个数据按顺序
     * 最经常去的省份中其中一张照片
     * 最北方的照片
     * 最西边的照片
     * 最新一次的照片
     *  8.这个段时间去过的城市顺序-有bug
     */
    List<String> cal_vised_place(Integer userId, Long start_time, Long end_time);
}
