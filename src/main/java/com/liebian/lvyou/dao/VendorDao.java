package com.liebian.lvyou.dao;

import com.liebian.lvyou.entity.Vendor;
import java.util.List;

public interface VendorDao {

    int deleteByPrimaryKey(Long vendor_id);

    Long insert(Vendor record);

    List<Vendor> getList();

    List<Vendor> getListByType(int type);

    Vendor selectByPrimaryKey(Long vendor_id);

    int updateByPrimaryKey(Vendor record);


}