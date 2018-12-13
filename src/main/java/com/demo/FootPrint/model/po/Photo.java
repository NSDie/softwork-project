package com.demo.FootPrint.model.po;

import lombok.Data;

/**
 * @program: softwork-project
 * @description: 照片实体
 * @author: Yyf
 * @create: 2018-11-13 16:27
 **/
@Data
public class Photo {
    private Integer id;

    private Integer userId;

    private Double longitude;

    private Double latitude;

    private String imgUrl;

    private Long time;

    private Integer praiseNum;

    private String province;

    private String city;

    private String label;

    private String address;

    private Long photoTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Double getLongitude() {
        return longitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

    public Double getLatitude() {
        return latitude;
    }

    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public Long getTime() {
        return time;
    }

    public void setTime(Long time) {
        this.time = time;
    }

    public Integer getPraiseNum() {
        return praiseNum;
    }

    public void setPraiseNum(Integer praiseNum) {
        this.praiseNum = praiseNum;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Long getPhotoTime() {
        return photoTime;
    }

    public void setPhotoTime(Long photoTime) {
        this.photoTime = photoTime;
    }

    public Byte getVisible() {
        return visible;
    }

    public void setVisible(Byte visible) {
        this.visible = visible;
    }

    /**
     * 上传成功or失败
     * 1：已上传
     * 0：未上传
     */
    private Byte visible;

    public Photo(){

    }
}
