package com.boncontact.Action.Base;

import com.boncontact.Base.BaseAction;
import com.boncontact.Domain.Login;
import com.boncontact.ServiceImpl.LoginServiceImpl;
import com.boncontact.utils.MD5;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * Created by qulongjun on 16/3/5.
 * @function: 登录功能
 */
@Component("login")
public class LoginAction extends BaseAction<Login>{

    private Login entity;
    private String jsonResult;

    /**
     * 显示登录界面
     * @return
     */
    public String login_page(){
        return SUCCESS;
    }

    /**
     * 登录验证
     * @return
     */
    public String login_find(){
        String passwordEncrypt= MD5.getMD5(entity.getPassword());
        boolean result = loginService.login_find(entity.getUsername(),passwordEncrypt);
        jsonResult = "{'result':'"+result+"'}";
        System.out.println(jsonResult);
        return SUCCESS;
    }

    @Override
    public Login getModel() {
        if(entity==null){
            entity=new Login();
        }
        return entity;
    }

    public String getJsonResult() {
        return jsonResult;
    }

    public void setJsonResult(String jsonResult) {
        this.jsonResult = jsonResult;
    }
}
