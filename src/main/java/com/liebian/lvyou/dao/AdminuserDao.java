package com.liebian.lvyou.dao;

import com.liebian.lvyou.entity.Adminuser;


import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface AdminuserDao {


    Long insert(Adminuser record);

    Adminuser selectByPrimaryKey(Long userid);

    int updateByPrimaryKeySelective(Adminuser record);

    Adminuser selectByLoginNamePassword(@Param("loginName")  String login_name,@Param("loginPassword") String login_password);

    List<Adminuser> getList();
}