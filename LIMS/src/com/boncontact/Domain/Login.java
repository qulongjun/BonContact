package com.boncontact.Domain;

/**
 * Created by qulongjun on 16/3/5.
 */
public class Login {
    //登录编号
    private Long id;
    //用户名
    private String username;
    //密码
    private String passowrd;
    //当前登录状态
    private int loginState;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassowrd() {
        return passowrd;
    }

    public void setPassowrd(String passowrd) {
        this.passowrd = passowrd;
    }

    public int getLoginState() {
        return loginState;
    }

    public void setLoginState(int loginState) {
        this.loginState = loginState;
    }
}
