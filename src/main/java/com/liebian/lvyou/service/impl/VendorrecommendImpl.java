package com.liebian.lvyou.service.impl;

import com.liebian.lvyou.dao.VendorrecommendDao;
import com.liebian.lvyou.entity.Vendorrecommend;
import com.liebian.lvyou.service.VendorrecommendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by hexianglin on 2017/9/27.
 */
@Service
public class VendorrecommendImpl implements VendorrecommendService {


    // 注入Service依赖
    @Autowired
    private VendorrecommendDao vendorrecommendDao;


    @Override
    public Long insert(Vendorrecommend record) {
        return vendorrecommendDao.insert(record);
    }

    @Override
    public Vendorrecommend selectByPrimaryKey(Long vendorRecommendId) {
        return vendorrecommendDao.selectByPrimaryKey(vendorRecommendId);
    }

    @Override
    public int updateByPrimaryKey(Vendorrecommend record) {
        return vendorrecommendDao.updateByPrimaryKey(record);
    }

    @Override
    public List<Vendorrecommend> getListByVendor(Long vendor_id,int pic_position) {
        return vendorrecommendDao.getListByVendor(vendor_id,pic_position);
    }
}