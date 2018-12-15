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
        String[] Pro={"#","#","#","#"};
        String[] Cit={"#","#","#","#"};
        Collections.sort(photoList, new Comparator<Photo>() {//时间排序
            @Override
            public int compare(Photo o1, Photo o2) {
                int i;
                if(o1.getPhotoTime()!=null && o1.getPhotoTime()!=null)
                i=(int)(o1.getPhotoTime()-o2.getPhotoTime());
                else i=(int)(o1.getTime()-o2.getTime());
                return i;
            }
        });
        Map<String,Integer> vis_province = new HashMap<String,Integer>();
        Map<String,Integer> vis_city = new HashMap<String,Integer>();
        List<String> orderPro=new ArrayList<>();
        List<String> orderCit=new ArrayList<>();
        String most_province="#",most_city="#";
        Integer valp=0,valc=0;
        int cnt=0;
        for(Photo photo:photoList){
            Long t;

            if(photo.getPhotoTime()!=null){
                t=photo.getPhotoTime();
            }else{
                t=photo.getTime();
            }
            // todo: 照片时间筛选
            if(true){
                cnt++;
                Integer val=null;
                if(photo.getCity()!=null) {
                    val = vis_city.get(photo.getCity());
                    if (val == null) {
                        if (valc == 0) {
                            most_city = photo.getCity();
                            valc = 1;
                        }
                        orderCit.add(photo.getCity());
                        vis_city.put(photo.getCity(), 1);
                    } else {
                        vis_city.put(photo.getCity(), val + 1);
                        if (valc < val + 1) {
                            most_city = photo.getCity();
                            valc = val + 1;
                        }
                    }
                }
                val=null;
                if(!photo.getProvince().equals("")) {
                    val = vis_province.get(photo.getProvince());
                    if (val == null) {
                        if (valp == 0) {
                            most_province = photo.getProvince();
                            valp = 1;
                        }
                        orderPro.add(photo.getProvince());
                        vis_province.put(photo.getProvince(), 1);
                    } else {
                        vis_province.put(photo.getProvince(), val + 1);
                        if (valp < val + 1) {
                            most_province = photo.getProvince();
                            valp = val + 1;
                        }
                    }
                }
                Double sn=photo.getLatitude();
                Double ew=photo.getLongitude();
                if (sn != null && ew != null) {
                    if(sn<S){
                        S=sn;
                        if(!photo.getProvince().equals("")) Pro[1]=photo.getProvince();
                        if(photo.getCity()!=null) Cit[1]=photo.getCity();
                    }
                    if(sn>N){
                        N=sn;
                        if(!photo.getProvince().equals("")) Pro[3]=photo.getProvince();
                        if(photo.getCity()!=null) Cit[3]=photo.getCity();
                    }
                    if(ew>E){
                        E=ew;
                        if(!photo.getProvince().equals("")) Pro[0]=photo.getProvince();
                        if(photo.getCity()!=null) Cit[0]=photo.getCity();
                    }
                    if(ew<W){
                        W=ew;
                        if(!photo.getProvince().equals("")) Pro[2]=photo.getProvince();
                        if(photo.getCity()!=null) Cit[2]=photo.getCity();
                    }
                }

            }
        }
        retString.add(vis_province.size()+"");
        retString.add(vis_city.size()+"");
        retString.add(cnt+"");
        retString.add(most_province);
        retString.add(most_city);
        for(int i=0;i<4;++i) retString.add(Pro[i]);
        for(int i=0;i<4;++i) retString.add(Cit[i]);
        for(String cit:orderCit) retString.add(cit);
        return  retString;
    }
}

