package com.demo.FootPrint.service.impl;

import com.demo.FootPrint.config.QiniuConfig;
import com.demo.FootPrint.dao.PhotoDao;
import com.demo.FootPrint.dao.UserDao;
import com.demo.FootPrint.exception.error.ApiException;
import com.demo.FootPrint.exception.error.PhotoErrorEnum;
import com.demo.FootPrint.model.dto.PhotoUpdateDTO;
import com.demo.FootPrint.model.dto.PhotoUploadBackDTO;
import com.demo.FootPrint.model.dto.PhotoUploadDTO;
import com.demo.FootPrint.model.po.Photo;
import com.demo.FootPrint.model.vo.PhotoMapVO;
import com.demo.FootPrint.model.vo.PhotoMarkVO;
import com.demo.FootPrint.model.vo.PhotoUploadVO;
import com.demo.FootPrint.service.PhotoService;
import com.demo.FootPrint.util.AESUtil;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * @program: softwork-project
 * @description: 照片服务层
 * @author: Yyf
 * @create: 2018-11-13 16:45
 **/
@Slf4j
@Service
public class PhotoServiceImpl implements PhotoService {

    private QiniuConfig qiniuConfig;

    private ObjectMapper jsonMapper;

    private ModelMapper modelMapper;

    private PhotoDao photoDao;

    private UserDao userDao;

    @Autowired
    public PhotoServiceImpl(QiniuConfig qiniuConfig, ObjectMapper jsonMapper, ModelMapper modelMapper,
                            PhotoDao photoDao, UserDao userDao) {
        this.qiniuConfig = qiniuConfig;
        this.jsonMapper = jsonMapper;
        this.modelMapper = modelMapper;
        this.photoDao = photoDao;
        this.userDao = userDao;
    }


    @Override
    public PhotoUploadVO upload(PhotoUploadDTO photoUploadDTO, Integer userId) {
        String key = String.valueOf(UUID.randomUUID()).replace("-", "");
        log.info("key->>" + key);

        // 保存Photo
        Photo photo = modelMapper.map(photoUploadDTO, Photo.class);
        // 图片尚未上传成功，不可见
        photo.setVisible((byte) 0);
        photo.setUserId(userId);
        Long now = System.currentTimeMillis();
        photo.setTime(now);
        photo.setPraiseNum(0);
        photo.setImgUrl(qiniuConfig.getCloudUrl() + key);

        photoDao.save(photo);

        // 返回上传凭证->>
        // AES加密timeId,后续用来校验回调消息的合法性
        String photoId = String.valueOf(photo.getId());
        String encryptedId = AESUtil.encrypt(photoId, qiniuConfig.getBackSecretKey());
        PhotoUploadBackDTO photoUploadBackDTO = new PhotoUploadBackDTO(photoId, encryptedId);
        try {
            String uploadBackDTOJson = jsonMapper.writeValueAsString(photoUploadBackDTO);
            // 添加回调数据
            qiniuConfig.getStringMap()
                    .put("callbackBody", uploadBackDTOJson);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        PhotoUploadVO photoUploadVO = new PhotoUploadVO();
        photoUploadVO.setId(photoId);
        photoUploadVO.setKey(key);
        photoUploadVO.setUploadToken(qiniuConfig.createToken(key));
        return photoUploadVO;
    }

    @Override
    public void uploadBack(PhotoUploadBackDTO photoUploadBackDTO){
        String rightKey = AESUtil.decrypt(photoUploadBackDTO.getEncryptedId(), qiniuConfig.getBackSecretKey());
        if (rightKey != null && photoUploadBackDTO.getId().equals(rightKey)) {
            // 上传成功
            photoDao.updateVisible(Integer.valueOf(photoUploadBackDTO.getId()), (byte) 1);
        } else {
            throw new ApiException(PhotoErrorEnum.BACK_INVALID);
        }
    }

    @Override
    public List<PhotoMapVO> getMap(Integer userId){
        List<Photo> photoList = photoDao.getAllByUserId(userId);
        List<PhotoMapVO> photoMapVOS = new ArrayList<>();
        photoList.forEach((photo)->{
            PhotoMapVO photoMapVO = modelMapper.map(photo,PhotoMapVO.class);
            photoMapVOS.add(photoMapVO);
        });
        return photoMapVOS;
    }

    @Override
    public List<PhotoMarkVO> getMark(Integer userId){
        List<PhotoMarkVO> photoMarkVOS = new ArrayList<>();
        List<Photo> photoList = photoDao.getAllByUserId(userId);
        photoList.forEach((photo) ->{
            PhotoMarkVO photoMarkVO = modelMapper.map(photo,PhotoMarkVO.class);
            photoMarkVO.setNum(10);
            photoMarkVOS.add(photoMarkVO);
        });
        return photoMarkVOS;
    }
    @Override
    public void delete(Integer photoId,Integer userId){
        photoDao.delete(photoId);
    }
    @Override
    public void updateLocal(PhotoUpdateDTO photoUpdateDTO){
        Photo photo = modelMapper.map(photoUpdateDTO,Photo.class);
        System.out.println(photo.toString());
        photoDao.updateById(photo);
    }
}

