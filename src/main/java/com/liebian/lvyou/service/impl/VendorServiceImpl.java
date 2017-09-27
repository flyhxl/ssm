package com.liebian.lvyou.service.impl;




import com.liebian.lvyou.dao.VendorDao;
import com.liebian.lvyou.service.VendorService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.liebian.lvyou.entity.Vendor;

import java.util.List;

/**
 * Created by hexianglin on 2017/9/21.
 */

@Service
public class VendorServiceImpl implements VendorService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    // 注入Service依赖
    @Autowired
    private VendorDao vendorDao;

    @Override
    public Vendor getById(long vendorID) {


        return vendorDao.selectByPrimaryKey(vendorID);

    }

    @Override
    public List<Vendor> getList() {

        return vendorDao.getList();
    }

    @Override
    public int insert(Vendor r)
    {
        return vendorDao.insert(r);
    }


}
