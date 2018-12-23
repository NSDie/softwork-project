package com.demo.FootPrint.service.impl;

import com.demo.FootPrint.dao.PhotoDao;
import com.demo.FootPrint.dao.UserDao;
import com.demo.FootPrint.exception.error.ApiException;
import com.demo.FootPrint.exception.error.UserErrorEnum;
import com.demo.FootPrint.model.dto.UserAdminLoginDTO;
import com.demo.FootPrint.model.dto.UserOAuthDTO;
import com.demo.FootPrint.model.po.Jscode2session;
import com.demo.FootPrint.model.po.Photo;
import com.demo.FootPrint.model.po.WechatUser;
import com.demo.FootPrint.model.vo.UserVO;
import com.demo.FootPrint.service.UserService;
import com.demo.FootPrint.util.AESUtil;
import com.demo.FootPrint.util.WechatUtil;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.session.data.redis.RedisOperationsSessionRepository;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;


/**
 * @program: softwork-project
 * @description: 用户服务实现类
 * @author: Yyf
 * @create: 2018-11-11 20:06
 **/

@Slf4j
@Service
public class UserServiceImpl implements UserService {

    private ModelMapper modelMapper;

    private UserDao userDao;

    private PhotoDao photoDao;

    // 数据库session-AES-密钥
    private static final String SESSION_PWD = "8X1V2EoXH79CZ3zS";

    // Spring-Session-Redis操作DAO,管理控制session
    private RedisOperationsSessionRepository sessionRepository;

    @Autowired
    public UserServiceImpl(UserDao userDao, PhotoDao photoDao, RedisOperationsSessionRepository sessionRepository, ModelMapper modelMapper) {
        this.userDao = userDao;
        this.photoDao = photoDao;
        this.sessionRepository = sessionRepository;
        this.modelMapper = modelMapper;
    }

    @Override
    public void oauth(UserOAuthDTO userOAuthDTO, HttpServletRequest request) {
        log.info("userOAuthDTO->>" + userOAuthDTO);
        Jscode2session jscode2session = WechatUtil.getJscode2session(userOAuthDTO.getCode());
        if (null == jscode2session) {
            throw new ApiException(UserErrorEnum.CODE_INVALID);
        }
        WechatUser test = userDao.getByOpenId(jscode2session.getOpenid());
        if (test != null) {
            initSession(request, test.getUserId(), jscode2session.getSessionKey());
        } else {
            WechatUser wechatUser = WechatUtil.decryptUser(jscode2session.getSessionKey(), userOAuthDTO.getEncryptedData(), userOAuthDTO.getIvStr());
            wechatUser.setCreateTime(System.currentTimeMillis() / 1000);
            userDao.save(wechatUser);
            initSession(request, wechatUser.getUserId(), jscode2session.getSessionKey());
        }
    }

    @Override
    public void login(String code, HttpServletRequest request) {
        log.info("code->>" + code);
        Jscode2session jscode2session = WechatUtil.getJscode2session(code);
        if (null == jscode2session) {
            throw new ApiException(UserErrorEnum.CODE_INVALID);
        }
        log.info("openId->>" + jscode2session.getOpenid());
        WechatUser wechatUser = userDao.getByOpenId(jscode2session.getOpenid());
        if (null == wechatUser) {
            throw new ApiException(UserErrorEnum.OAUTH_NOT_FOUND);
        }
        log.info("session->>" + jscode2session);

        initSession(request, wechatUser.getUserId(), jscode2session.getSessionKey());
    }

    private void initSession(HttpServletRequest request, Integer userId, String sessionKey) {
        // 清除已有的sessionID,保证同一时间一处登录
        String sessionId = userDao.getSessionIdByUserId(userId);
        if (sessionId != null) {
            // 解密AES-Session
            sessionId = AESUtil.decrypt(sessionId, SESSION_PWD);
            sessionRepository.deleteById(sessionId);
        }

        HttpSession httpSession = request.getSession(true);
        httpSession.setMaxInactiveInterval(3600 * 24);
        httpSession.setAttribute("userId", userId);
        httpSession.setAttribute("sessionKey", sessionKey);

        String encryptSessionId = AESUtil.encrypt(httpSession.getId(), SESSION_PWD);
        userDao.updateSessionIdByUserId(userId, encryptSessionId);

        log.info("userId->>" + httpSession.getAttribute("userId"));
    }

    @Override
    public void adminLogin(UserAdminLoginDTO userAdminLoginDTO, HttpServletRequest request) {
        if (userAdminLoginDTO.getName().equals("w2") && userAdminLoginDTO.getPass().equals("10086")) {
            request.getSession(true);
        } else {
            throw new ApiException(UserErrorEnum.PASS_INVALID);
        }
    }

    @Override
    public UserVO getMe(Integer userId) {
        WechatUser wechatUser = userDao.getInfo(userId);
        UserVO userVO = modelMapper.map(wechatUser, UserVO.class);
        List<Photo> photoList = photoDao.getAllByUserId(userId);
        ArrayList<Integer> achieveList = new ArrayList<>();
        HashSet<String> citySet = new HashSet<>();
        HashSet<String> proSet = new HashSet<>();
        for(Photo photo:photoList){
            if(!(photo.getCity().equals("")||photo.getCity()==null)){
                citySet.add(photo.getCity());
            }
            if(!(photo.getProvince().equals("")||photo.getProvince()==null)){
                proSet.add(photo.getCity());
            }
        }

        // 成就1 去过两个省份
        if(proSet.size()>=2){
            achieveList.add(1);
        }else{
            achieveList.add(0);
        }
        // 成就2 十个朋友识别你的二维码进入
        achieveList.add(0);
        // 成就3 去过一个省份内超过五个城市
        if(citySet.size()>=5){
            achieveList.add(1);
        }else{
            achieveList.add(0);
        }
        // 成就4 去过5个省份
        if(proSet.size()>=5){
            achieveList.add(1);
        }else{
            achieveList.add(0);
        }
        // 成就5 去过10个省份
        if(proSet.size()>=10){
            achieveList.add(1);
        }else{
            achieveList.add(0);
        }
        // 成就6 去过30个城市或15个省份
        if(proSet.size()>=15||citySet.size()>=30){
            achieveList.add(1);
        }else{
            achieveList.add(0);
        }
        userVO.setAchievement(achieveList);
        userVO.setCityNum(citySet.size());
        userVO.setProNum(proSet.size());
        return userVO;
    }



}
