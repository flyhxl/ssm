package com.liebian.lvyou.service;

import java.util.List;

import com.liebian.lvyou.entity.Comment;

public interface CommentService {
    int insert(Comment record);

    List<Comment> getALl();

    List<Comment> getAllByVendor(Long vendor_id, Integer status);

    Comment selectByPrimaryKey(Long commentId);


    int updateByPrimaryKey(Comment record);
}
