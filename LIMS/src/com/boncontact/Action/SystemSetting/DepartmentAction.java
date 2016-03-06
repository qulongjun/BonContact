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
        if(entity!=null){
            System.out.println(entity.getName());
            System.out.println(entity.getOther());
            jsonResult = "{'result':'"+departmentService.save(entity)+"'}";
        }else{
            jsonResult = "{'result':'error'}";
        }
        return SUCCESS;
    }

    public String getJsonResult() {
        return jsonResult;
    }

    public void setJsonResult(String jsonResult) {
        this.jsonResult = jsonResult;
    }

    @Override
    public Department getModel() {
        if(entity==null){
            entity=new Department();
        }
        return entity;
    }
}
