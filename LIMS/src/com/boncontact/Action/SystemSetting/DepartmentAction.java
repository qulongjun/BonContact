package com.boncontact.Action.SystemSetting;

import com.boncontact.Base.BaseAction;
import com.boncontact.Domain.Department;

public class DepartmentAction extends BaseAction<Department> {
    private Department entity;
    private String jsonResult;


    
    @Override
    public Department getModel() {
        if(entity==null){
            entity=new Department();
        }
        return entity;
    }
}
