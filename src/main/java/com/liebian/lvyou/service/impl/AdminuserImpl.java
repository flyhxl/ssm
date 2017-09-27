package com.liebian.lvyou.service.impl;

import com.liebian.lvyou.entity.Adminuser;
import com.liebian.lvyou.service.AdminuserService;
import com.liebian.lvyou.dao.AdminuserDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
/**
 * Created by hexianglin on 2017/9/26.
 */
@Service
public class AdminuserImpl implements AdminuserService {

    // 注入Service依赖
    @Autowired
    private  AdminuserDao adminuserDao;

    @Override
    public Adminuser insert(Adminuser model) {

        Long userid=adminuserDao.insert(model);
        if(userid>0)
        {
            model.setUserid(userid);
        }

        return model;
    }

    @Override
    public Adminuser UserLogin(String login_name, String login_password) {

        return adminuserDao.selectByLoginNamePassword(login_name,login_password);
    }


    public boolean UpdateUserPassWord(Long user_id, String login_password) {

       Adminuser model= adminuserDao.selectByPrimaryKey(user_id);
        model.setLoginPassword(login_password);
        int n=adminuserDao.updateByPrimaryKeySelective(model);
        boolean re=false;
        if(n>0)
        {
            re=true;
        }
        return re;
    }
    @Override
    public List<Adminuser> getList()
    {
        return adminuserDao.getList();
    }

    @Override
    public Adminuser selectByPrimaryKey(Long userid) {
        return  adminuserDao.selectByPrimaryKey(userid);
    }

}
