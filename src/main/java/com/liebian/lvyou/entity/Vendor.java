package com.liebian.lvyou.entity;

import java.io.Serializable;


/**
 * @author
 */
public class Vendor implements Serializable {
    /**
     * 商家ID
     */

    private Long vendor_id;

    /**
     * 商家名称
     */
    private String name;

    /**
     * 商家地址
     */
    private String address;

    /**
     * 商家地图纬度
     */
    private Float address_point_x;

    /**
     * 商家地图经度
     */
    private Float address_point_y;

    /**
     * 商家logo
     */
    private String logo;

    /**
     * 商家人均消费
     */
    private Integer sale_percapitaprice;

    /**
     * 商家餐饮类型
     */
    private String sale_cookingstyle;

    /**
     * 销售userid
     */
    private Integer sell_userid;

    /**
     * 录入时间
     */
    private Long addtime;


    /**
     * 营业时间
     */
    private String business_hours;

    /**
     * 商户类型1:餐饮 2：景点
     */
    private int shop_type;



    /**
     * 商户类型0:删除 1：正常
     */
    private int status;
    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }



    private static final long serialVersionUID = 1L;

    public int getShoptype() {
        return shop_type;
    }

    public void setShoptype(int shoptype) {
        this.shop_type = shoptype;
    }





    public String getBusinesshours() {
        return business_hours;
    }

    public void setBusinesshours(String businesshours) {
        this.business_hours = businesshours;
    }





    public Long getVendor_id() {
        return vendor_id;
    }

    public void setVendorid(Long vendor_id) {
        this.vendor_id = vendor_id;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Float getAddress_point_x() {
        return address_point_x;
    }

    public void setAddresspointx(Float address_point_x) {
        this.address_point_x = address_point_x;
    }

    public Float getAddress_point_y() {
        return address_point_y;
    }

    public void setAddresspointy(Float address_point_y) {
        this.address_point_y = address_point_y;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public Integer getSale_percapitaprice() {
        return sale_percapitaprice;
    }

    public void setSalepercapitaprice(Integer sale_percapitaprice) {
        this.sale_percapitaprice = sale_percapitaprice;
    }



    public String getSale_cookingstyle() {
        return sale_cookingstyle;
    }

    public void setSalecookingstyle(String sale_cookingstyle) {
        this.sale_cookingstyle = sale_cookingstyle;
    }

    public Integer getSell_userid() {
        return sell_userid;
    }

    public void setSelluserid(Integer sell_userid) {
        this.sell_userid = sell_userid;
    }

    public Long getAddtime() {
        return addtime;
    }

    public void setAddtime(Long addtime) {
        this.addtime = addtime;
    }


}