package com.boncontact.Action.Base;

import com.boncontact.Base.BaseAction;
import com.boncontact.Domain.User;

/**
 * Created by qulongjun on 16/3/5.
 * @function: 登录功能
 */
public class Login extends BaseAction<Login>{

    public String login(){
        System.out.print("执行到这了");
        return SUCCESS;
    }
}
