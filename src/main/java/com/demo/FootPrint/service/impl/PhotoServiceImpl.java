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
import io.swagger.models.auth.In;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
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
        Long now = System.currentTimeMillis()/1000;
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
        System.out.println("我被调用了！");
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
        try {
            photoDao.delete(photoId, userId);
        } catch (Exception e){
            throw new ApiException(PhotoErrorEnum.BACK_INVALID);
        }
    }
    @Override
    public void updateLocal(PhotoUpdateDTO photoUpdateDTO, Integer userId){
        Photo photo = modelMapper.map(photoUpdateDTO,Photo.class);
        photoDao.updateById(photo, userId);
    }

    @Override
    public  List<String> cal_vised_place(Integer userId, Long start_time, Long end_time){
        List<Photo> photoList = photoDao.getAllByUserId(userId);
        List<String> retString = new ArrayList<>();
        Double E=0.0,S=90.0,W=180.0,N=0.0;
        String[] Pro={"无","无","无","无"};
        String[] Cit={"无","无","无","无"};
        Map<String,Integer> vis_province = new HashMap<>();
        Map<String,Integer> vis_city = new HashMap<>();
        String photo_url1="https://foot.yyf-blog.com/userstory/bg/pic1.png";
        String photo_url2="https://foot.yyf-blog.com/userstory/bg/pic2.png";
        String photo_url3="https://foot.yyf-blog.com/userstory/bg/pic3.png";
        String photo_url4="https://foot.yyf-blog.com/userstory/bg/pic4.png";
        String photo_url5="https://foot.yyf-blog.com/userstory/bg/pic5.png";
        String photo_url6="https://foot.yyf-blog.com/userstory/bg/pic6.png";
        String most_province="中国",most_city="家乡";
        Integer valP=0,valC=0;
        int cnt=0;
        long time=0;
        System.out.println(photoList);
        for(Photo photo:photoList){
            // todo: 照片时间筛选
                cnt++;
                Integer val=null;
                if(photo.getCity()!=null) {
                    val = vis_city.get(photo.getCity());
                    if (val == null) {
                        if (valC == 0) {
                            most_city = photo.getCity();
                            if(photo.getImgUrl()!=null) {
                                photo_url1 = photo.getImgUrl();
                            }
                            valC = 1;
                        }
                        vis_city.put(photo.getCity(), 1);
                    } else {
                        vis_city.put(photo.getCity(), val + 1);
                        if (valC < val + 1) {
                            most_city = photo.getCity();
                            valC = val + 1;
                            if(photo.getImgUrl()!=null){
                                photo_url1=photo.getImgUrl();
                            }
                        }
                    }
                }
                val=null;
                if(!photo.getProvince().equals("")) {
                    val = vis_province.get(photo.getProvince());
                    if (val == null) {
                        if (valP == 0) {
                            most_province = photo.getProvince();
                            valP = 1;
                        }
                        vis_province.put(photo.getProvince(), 1);
                    } else {
                        vis_province.put(photo.getProvince(), val + 1);
                        if (valP < val + 1) {
                            most_province = photo.getProvince();
                            valP = val + 1;
                        }
                    }
                }
                Double sn=photo.getLatitude();
                Double ew=photo.getLongitude();
                if (sn != null && ew != null){
                    if(sn<S){
                        if(photo.getImgUrl()!=null){
                            photo_url4=photo.getImgUrl();
                        }
                        S=sn;
                        if(!photo.getProvince().equals("")) Pro[1]=photo.getProvince();
                        if(photo.getCity()!=null) Cit[1]=photo.getCity();
                    }
                    if(sn>N){
                        N=sn;
                        if(photo.getImgUrl()!=null){
                            photo_url6=photo.getImgUrl();
                        }
                        if(!photo.getProvince().equals("")) Pro[3]=photo.getProvince();
                        if(photo.getCity()!=null)
                            Cit[3] = photo.getCity();
                    }
                    if(ew>E){
                        E=ew;
                        if(photo.getImgUrl()!=null){
                            photo_url3=photo.getImgUrl();
                        }
                        if(!photo.getProvince().equals("")) Pro[0]=photo.getProvince();
                        if(photo.getCity()!=null) Cit[0]=photo.getCity();
                    }
                    if(ew<W){
                        W=ew;
                        if(photo.getImgUrl()!=null){
                            photo_url5=photo.getImgUrl();
                        }
                        if(!photo.getProvince().equals("")) Pro[2]=photo.getProvince();
                        if(photo.getCity()!=null) Cit[2]=photo.getCity();
                    }
                }
                if(photo.getImgUrl()!=null) {
                    if(photo.getPhotoTime()!=null){
                        if(time<photo.getPhotoTime())
                        {
                            time=photo.getPhotoTime();
                            photo_url2 = photo.getImgUrl();
                        }
                    }
                    else if(photo.getTime()!=null){
                        if(time<photo.getTime()){
                            time=photo.getTime();
                            photo_url2=photo.getImgUrl();
                        }
                    }
                }
        }
        retString.add(vis_province.size()+"");//0
        retString.add(vis_city.size()+"");//1
        retString.add(cnt+"");//2
        retString.add(most_province);//3
        retString.add(most_city);//4
        retString.add(photo_url1);// 5 最经常去的省份中其中一张照片
        retString.add(photo_url2);// 6 最新一次的照片
        retString.add(photo_url3);// 7 最东方的照片
        retString.add(photo_url4);// 8 最南边的照片
        retString.add(photo_url5);// 9 最西边的照片
        retString.add(photo_url6);// 10 最北边的照片
        for(int i=0;i<4;++i) retString.add(Pro[i]);
        for(int i=0;i<4;++i) retString.add(Cit[i]);
        return  retString;
    }
}

