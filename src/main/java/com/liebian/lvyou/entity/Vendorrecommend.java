package com.liebian.lvyou.entity;

import java.io.Serializable;

/**
 * @author 
 */
public class Vendorrecommend implements Serializable {
    /**
     * 商家推荐ID
     */
    private Long vendorRecommendId;

    /**
     * 商家ID
     */
    private Long vendorId;

    /**
     * 推荐标题
     */
    private String title;

    /**
     * 推荐内容
     */
    private String content;

    /**
     * 推荐照片
     */
    private String pic;

    private Integer addtime;

    /**
     * 照片位置1:店铺 2:推荐
     */
    private  Integer pic_position;

    public Integer getPicposition() {
        return pic_position;
    }

    public void setPicposition(Integer picposition) {
        this.pic_position = picposition;
    }





    private static final long serialVersionUID = 1L;

    public Long getVendorRecommendId() {
        return vendorRecommendId;
    }

    public void setVendorRecommendId(Long vendorRecommendId) {
        this.vendorRecommendId = vendorRecommendId;
    }

    public Long getVendorId() {
        return vendorId;
    }

    public void setVendorId(Long vendorId) {
        this.vendorId = vendorId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
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
        Vendorrecommend other = (Vendorrecommend) that;
        return (this.getVendorRecommendId() == null ? other.getVendorRecommendId() == null : this.getVendorRecommendId().equals(other.getVendorRecommendId()))
            && (this.getVendorId() == null ? other.getVendorId() == null : this.getVendorId().equals(other.getVendorId()))
            && (this.getTitle() == null ? other.getTitle() == null : this.getTitle().equals(other.getTitle()))
            && (this.getContent() == null ? other.getContent() == null : this.getContent().equals(other.getContent()))
            && (this.getPic() == null ? other.getPic() == null : this.getPic().equals(other.getPic()))
            && (this.getAddtime() == null ? other.getAddtime() == null : this.getAddtime().equals(other.getAddtime()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getVendorRecommendId() == null) ? 0 : getVendorRecommendId().hashCode());
        result = prime * result + ((getVendorId() == null) ? 0 : getVendorId().hashCode());
        result = prime * result + ((getTitle() == null) ? 0 : getTitle().hashCode());
        result = prime * result + ((getContent() == null) ? 0 : getContent().hashCode());
        result = prime * result + ((getPic() == null) ? 0 : getPic().hashCode());
        result = prime * result + ((getAddtime() == null) ? 0 : getAddtime().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", vendorRecommendId=").append(vendorRecommendId);
        sb.append(", vendorId=").append(vendorId);
        sb.append(", title=").append(title);
        sb.append(", content=").append(content);
        sb.append(", pic=").append(pic);
        sb.append(", addtime=").append(addtime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}