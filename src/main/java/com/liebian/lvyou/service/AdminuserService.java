package com.liebian.lvyou.service;

import java.util.List;

import com.liebian.lvyou.entity.Adminuser;

/**
 * Created by hexianglin on 2017/9/26.
 */
public interface AdminuserService {

    Adminuser insert(Adminuser model);
    Adminuser UserLogin(String login_name,String login_password);
    boolean UpdateUserPassWord(Long user_id,String login_password);
    List<Adminuser> getList();
    Adminuser selectByPrimaryKey(Long userid);

}
