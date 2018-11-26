package com.demo.FootPrint.dao;

import com.demo.FootPrint.model.po.Photo;
import io.lettuce.core.dynamic.annotation.Param;

import java.util.List;

/**
 * @program: softwork-project
 * @description: 照片类dao
 * @author: Yyf
 * @create: 2018-11-13 17:02
 **/
public interface PhotoDao {

    void save(Photo photo);

    void updateVisible(@Param("photoId") Integer photoId, @Param("visible") Byte visible);

    Photo getById(int id);

    List<Photo> getAllByUserId(@Param("userId") Integer userId);

    void updateById(Photo photo);

    void delete(@Param("photoId") Integer photoId);
}
