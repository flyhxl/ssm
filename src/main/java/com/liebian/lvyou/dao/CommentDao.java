package com.liebian.lvyou.dao;

import com.liebian.lvyou.entity.Comment;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface CommentDao {


    int insert(Comment record);

    List<Comment> getALl();

    List<Comment> getAllByVendor(@Param("vendor_id_test")  Long vendor_id, @Param("status") Integer status);

    Comment selectByPrimaryKey(Long commentId);


    int updateByPrimaryKey(Comment record);
}