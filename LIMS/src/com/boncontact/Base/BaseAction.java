package com.boncontact.Base;

import com.boncontact.Service.LoginService;
import com.boncontact.ServiceImpl.LoginServiceImpl;
import com.boncontact.utils.GenericsUtils;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import javax.annotation.Resource;


public abstract class BaseAction<T> extends ActionSupport implements ModelDriven<T>{
    private static final long serialVersionUID = 7016596636244395063L;
    protected T model;
    Class<T> clazz;
    public BaseAction(){
        try {
            clazz= GenericsUtils.getSuperClassGenricType(this.getClass());
            model = clazz.newInstance();
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }
    public T getModel() {
        return model;
    }

    @Resource
    protected LoginService loginService;
}
