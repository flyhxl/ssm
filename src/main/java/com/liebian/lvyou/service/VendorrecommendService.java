package com.liebian.lvyou.service;

import com.liebian.lvyou.entity.Vendorrecommend;

import java.util.List;

/**
 * Created by hexianglin on 2017/9/27.
 */
public interface VendorrecommendService {


    Long insert(Vendorrecommend record);


    Vendorrecommend selectByPrimaryKey(Long vendorRecommendId);


    int updateByPrimaryKey(Vendorrecommend record);

    List<Vendorrecommend> getListByVendor(Long vendor_id,int pic_position);

}
