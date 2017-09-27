package com.liebian.lvyou.entity;

import java.io.Serializable;


/**
 * @author 
 */
public class Comment implements Serializable {
    /**
     * 点评id
     */
    private Long commentId;

    /**
     * 微信用户openid
     */
    private String wxOpenid;

    /**
     * 微信用户名
     */
    private String wxUsername;

    /**
     * 微信用户头像
     */
    private String wxHeadimage;

    /**
     * 留言内容
     */
    private String content;

    /**
     * 评分
     */
    private Integer score;

    /**
     * 留言时间
     */
    private Integer addtime;
    /**
     * 留言状态
     */
    private Integer status;

    /**
     * 商家ID
     */
    private Long  vendorid;
    private static final long serialVersionUID = 1L;

    public Long getVendorId() {
        return vendorid;
    }
    public void setVendorId(Long vendor_id) {
        this.vendorid = vendor_id;
    }

    public Integer getStatus() {
        return status;
    }
    public void setStatus(int status) {
        this.status = status;
    }


    public Long getCommentId() {
        return commentId;
    }

    public void setCommentId(Long commentId) {
        this.commentId = commentId;
    }

    public String getWxOpenid() {
        return wxOpenid;
    }

    public void setWxOpenid(String wxOpenid) {
        this.wxOpenid = wxOpenid;
    }

    public String getWxUsername() {
        return wxUsername;
    }

    public void setWxUsername(String wxUsername) {
        this.wxUsername = wxUsername;
    }

    public String getWxHeadimage() {
        return wxHeadimage;
    }

    public void setWxHeadimage(String wxHeadimage) {
        this.wxHeadimage = wxHeadimage;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public Integer getAddtime() {
        return addtime;
    }

    public void setAddtime(Integer addtime) {
        this.addtime = addtime;
    }


}