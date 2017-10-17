package com.liebian.lvyou.dao;

import com.liebian.lvyou.entity.Vendorrecommend;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface VendorrecommendDao {


    Long insert(Vendorrecommend record);


    Vendorrecommend selectByPrimaryKey(Long vendorRecommendId);


    int updateByPrimaryKey(Vendorrecommend record);

    List<Vendorrecommend> getListByVendor(@Param("vendor_id") Long vendor_id,@Param("pic_position") int position);
}