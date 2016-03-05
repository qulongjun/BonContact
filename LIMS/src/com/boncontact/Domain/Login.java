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
    private String password;
    //当前登录状态
    private int loginState;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getLoginState() {
        return loginState;
    }

    public void setLoginState(int loginState) {
        this.loginState = loginState;
    }
}
