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

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        Comment other = (Comment) that;
        return (this.getCommentId() == null ? other.getCommentId() == null : this.getCommentId().equals(other.getCommentId()))
            && (this.getWxOpenid() == null ? other.getWxOpenid() == null : this.getWxOpenid().equals(other.getWxOpenid()))
            && (this.getWxUsername() == null ? other.getWxUsername() == null : this.getWxUsername().equals(other.getWxUsername()))
            && (this.getWxHeadimage() == null ? other.getWxHeadimage() == null : this.getWxHeadimage().equals(other.getWxHeadimage()))
            && (this.getContent() == null ? other.getContent() == null : this.getContent().equals(other.getContent()))
            && (this.getScore() == null ? other.getScore() == null : this.getScore().equals(other.getScore()))
            && (this.getAddtime() == null ? other.getAddtime() == null : this.getAddtime().equals(other.getAddtime()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getCommentId() == null) ? 0 : getCommentId().hashCode());
        result = prime * result + ((getWxOpenid() == null) ? 0 : getWxOpenid().hashCode());
        result = prime * result + ((getWxUsername() == null) ? 0 : getWxUsername().hashCode());
        result = prime * result + ((getWxHeadimage() == null) ? 0 : getWxHeadimage().hashCode());
        result = prime * result + ((getContent() == null) ? 0 : getContent().hashCode());
        result = prime * result + ((getScore() == null) ? 0 : getScore().hashCode());
        result = prime * result + ((getAddtime() == null) ? 0 : getAddtime().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", commentId=").append(commentId);
        sb.append(", wxOpenid=").append(wxOpenid);
        sb.append(", wxUsername=").append(wxUsername);
        sb.append(", wxHeadimage=").append(wxHeadimage);
        sb.append(", content=").append(content);
        sb.append(", score=").append(score);
        sb.append(", addtime=").append(addtime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}