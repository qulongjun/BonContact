package com.boncontact.Action.SystemSetting;

import com.boncontact.Base.BaseAction;
import com.boncontact.Domain.Department;
import com.opensymphony.xwork2.ActionContext;
import org.springframework.stereotype.Component;

import java.util.List;

@Component("department")
public class DepartmentAction extends BaseAction<Department> {
    private Department entity;
    private String jsonResult;

    public String department_page(){
        List<Department> departmentList = departmentService.findAll();
        ActionContext.getContext().put("departmentList", departmentList);
        return SUCCESS;
    }


    public String department_add(){
        if(entity!=null){
            System.out.println(entity.getName());
            System.out.println(entity.getOther());
            jsonResult = "{'result':'"+departmentService.save(entity)+"'}";
        }else{
            jsonResult = "{'result':'false'}";
        }
        return SUCCESS;
    }
    public String department_editPage(){
        long id=entity.getId();
        if(id>0){
            entity = departmentService.getById(id);
        }
        ActionContext.getContext().put("department", entity);
        jsonResult = "{'result':'true','department':"+entity.toString()+"}";
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
