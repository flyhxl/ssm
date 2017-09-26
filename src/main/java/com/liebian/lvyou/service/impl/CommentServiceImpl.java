package com.liebian.lvyou.service.impl;

import com.liebian.lvyou.dao.CommentDao;
import com.liebian.lvyou.entity.Comment;
import com.liebian.lvyou.service.CommentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by hexianglin on 2017/9/22.
 */

@Service
public class CommentServiceImpl implements CommentService {


    private Logger logger = LoggerFactory.getLogger(this.getClass());

    // 注入Service依赖
    @Autowired
    private CommentDao commentDao;



    @Override
    public int insert(Comment record) {
        return commentDao.insert(record);
    }

    @Override
    public List<Comment> getALl() {

        return  commentDao.getALl();
    }

    @Override
    public List<Comment> getAllByVendor(Long vendor_id, Integer status) {
        return  commentDao.getAllByVendor(vendor_id,status);
    }

    @Override
    public Comment selectByPrimaryKey(Long commentId) {
        return commentDao.selectByPrimaryKey(commentId);
    }

    @Override
    public int updateByPrimaryKey(Comment record) {
        return commentDao.updateByPrimaryKey(record);
    }
}
