package com.boncontact.Base;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.lang.reflect.ParameterizedType;


public abstract class BaseAction<T> extends ActionSupport implements ModelDriven<T>{
    private static final long serialVersionUID = 7016596636244395063L;
    protected T model;
    public BaseAction(){
        try {
            ParameterizedType pt = (ParameterizedType) this.getClass()
                    .getGenericSuperclass();
            Class<T> clazz = (Class<T>) pt.getActualTypeArguments()[0];
            model = clazz.newInstance();
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }
    public T getModel() {
        return model;
    }

}
