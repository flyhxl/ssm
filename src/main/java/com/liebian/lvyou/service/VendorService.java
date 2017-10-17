package com.liebian.lvyou.service;

import java.util.List;

import com.liebian.lvyou.entity.Vendor;

/**
 * Created by hexianglin on 2017/9/21.
 */
public interface VendorService {



    /**
     * 查询一个供应商
     *
     * @param vendorID
     * @return
     */
    Vendor getById(long vendorID);

    /**
     * 查询所有
     *
     * @return
     */
    List<Vendor> getList();


    /**
     * 查询所有
     *
     * @return
     */
    List<Vendor> getListByType(int shoptype);




    Long insert(Vendor r);
}
