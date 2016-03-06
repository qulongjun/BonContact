package com.boncontact.Action.SystemSetting;

import com.boncontact.Base.BaseAction;
import com.boncontact.Domain.Department;
import org.springframework.stereotype.Component;

@Component("department")
public class DepartmentAction extends BaseAction<Department> {
    private Department entity;
    private String jsonResult;

    public String department_page(){
        return SUCCESS;
    }

    public String department_add(){
        jsonResult = "{'result':'true'}";
        return SUCCESS;
    }


    @Override
    public Department getModel() {
        if(entity==null){
            entity=new Department();
        }
        return entity;
    }
}
