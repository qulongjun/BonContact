package com.boncontact.Action.SystemSetting;

import com.boncontact.Base.BaseAction;
import com.boncontact.Domain.User_Group;
import org.springframework.stereotype.Component;

@Component("user_group")
public class UserGroupAction extends BaseAction<User_Group>{
    private User_Group entity;
    private String jsonResult;

    public String user_group_add(){
        System.out.print(entity.getName());
        return SUCCESS;
    }

    @Override
    public User_Group getModel() {
        if(entity==null){
            entity=new User_Group();
        }
        return entity;
    }
}
