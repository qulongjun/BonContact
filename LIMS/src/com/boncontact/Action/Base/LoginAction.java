package com.boncontact.Action.Base;

import com.boncontact.Base.BaseAction;
import com.boncontact.Domain.Login;

/**
 * Created by qulongjun on 16/3/5.
 * @function: 登录功能
 */
public class LoginAction extends BaseAction<Login>{
    private Login entity;
    public String login(){
        System.out.print("执行到这了");
        System.out.print(entity.getUsername());
        System.out.print(entity.getPassword());
        return SUCCESS;
    }

    @Override
    public Login getModel() {
        if(entity==null){
            entity=new Login();
        }
        return entity;
    }
}
