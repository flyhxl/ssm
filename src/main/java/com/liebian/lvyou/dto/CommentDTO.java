package com.liebian.lvyou.dto;

import com.liebian.lvyou.entity.Comment;

/**
 * Created by hexianglin on 2017/9/29.
 */
public class CommentDTO {
    private Comment commentModel;
    private String  timeStr;

    public Comment getComment() {
        return commentModel;
    }

    public void setComment(Comment model) {
        this.commentModel = model;
    }


    public String getTimeStr() {
        return timeStr;
    }

    public void setTimeStr(String str) {
        this.timeStr = str;
    }

    public CommentDTO( Comment m,String tStr)
    {
        this.commentModel=m;
        this.timeStr=tStr;
    }
}
