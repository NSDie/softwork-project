package com.demo.FootPrint.controller;


import com.demo.FootPrint.model.dto.PhotoUploadBackDTO;
import com.demo.FootPrint.model.dto.PhotoUploadDTO;
import com.demo.FootPrint.model.po.ApiResult;
import com.demo.FootPrint.model.vo.PhotoMapVO;
import com.demo.FootPrint.model.vo.PhotoUploadVO;
import com.demo.FootPrint.service.PhotoService;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

/**
 * @program: softwork-project
 * @description: 照片控制层
 * @author: Yyf
 * @create: 2018-11-13 17:38
 **/
@Slf4j
@Validated
@RestController
@RequestMapping("/photo")
public class PhotoController {

    private PhotoService photoService;

    @Autowired
    public PhotoController(PhotoService photoService){
        this.photoService = photoService;
    }

    @ApiOperation(value = "照片上传", notes = "发布完成后将获取OOS凭证,进一步上传")
    @PostMapping("/upload")
    public ApiResult<PhotoUploadVO> upload(@RequestBody @Valid PhotoUploadDTO photoUploadDTO, HttpSession session) {
        ApiResult<PhotoUploadVO> apiResult = new ApiResult<>();
        PhotoUploadVO timeUploadVO = photoService.upload(photoUploadDTO, (Integer) session.getAttribute("userId"));
        apiResult.setData(timeUploadVO);
        return apiResult;
    }

    @ApiOperation(value = "时光发布回调", notes = "由七牛云服务器发出,用于校验图片成功上传")
    @PostMapping("/uploadBack")
    public ApiResult<String> uploadBack(@RequestBody PhotoUploadBackDTO photoUploadBackDTO) {
        ApiResult<String> apiResult = new ApiResult<>();
        photoService.uploadBack(photoUploadBackDTO);
        return apiResult;
    }

    @ApiOperation(value = "照片地图", notes = "照片的经纬度")
    @GetMapping("/map")
    public ApiResult<List<PhotoMapVO>> getMap(HttpSession session) {
        ApiResult<List<PhotoMapVO>> apiResult = new ApiResult<>();
        List<PhotoMapVO> photoMapVOS = photoService.getMap((Integer) session.getAttribute("userId"));
        apiResult.setData(photoMapVOS);
        return apiResult;
    }
}
