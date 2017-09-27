package com.liebian.lvyou.entity;



/**
 * @author
 */
public class Adminuser {
    /**
     * 用户id
     */
    private Long userid;

    /**
     * 账号
     */
    private String loginName;

    /**
     * 密码
     */
    private String loginPassword;

    /**
     * 状态
     */
    private Integer status;

    /**
     * 角色id
     */
    private Integer roleid;

    /**
     * 添加时间
     */
    private Integer addtime;

    private static final long serialVersionUID = 1L;

    public Long getUserid() {
        return userid;
    }

    public void setUserid(Long userid) {
        this.userid = userid;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getLoginPassword() {
        return loginPassword;
    }

    public void setLoginPassword(String loginPassword) {
        this.loginPassword = loginPassword;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public Integer getAddtime() {
        return addtime;
    }

    public void setAddtime(Integer addtime) {
        this.addtime = addtime;
    }


}