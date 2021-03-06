package com.boncontact.Action.SystemSetting;

import com.boncontact.Base.BaseAction;
import com.boncontact.Domain.Department;
import com.boncontact.Domain.User_Group;
import com.opensymphony.xwork2.ActionContext;
import net.sf.json.JSONArray;
import org.springframework.stereotype.Component;

import java.util.List;

@Component("department")
public class DepartmentAction extends BaseAction<Department> {
    private Department entity;
    private String jsonResult;

    public String department_page() {
        List<Department> departmentList = departmentService.findAll();
        List<User_Group> user_groupList = userGroupService.findAll();
        ActionContext.getContext().put("departmentList", departmentList);
        ActionContext.getContext().put("userGroupList", user_groupList);
        return SUCCESS;
    }

    public String department_list() {
        if (entity.getId() != null) {
            List<User_Group> user_groups = departmentService.getById(entity.getId()).getUser_groups();
            if(user_groups.size()!=0){
                JSONArray json = JSONArray.fromObject(user_groups);
                jsonResult = "{'result':'true','entity':" + json + "}";
            }else{
                jsonResult = "{'result':'true'}";
            }
        } else {
            jsonResult = "{'result':'false'}";
        }
        return SUCCESS;
    }


    public String department_add() {
        if (entity != null) {
            jsonResult = "{'result':'" + departmentService.save(entity) + "'}";
        } else {
            jsonResult = "{'result':'false'}";
        }
        return SUCCESS;
    }

    public String department_edit() {
        if (entity.getId() != null) {
            jsonResult = "{'result':'" + departmentService.update(entity) + "'}";
        }
        return SUCCESS;
    }

    public String department_editPage() {
        long id = entity.getId();
        if (id > 0) {
            entity = departmentService.getById(id);
        }
        JSONArray json = JSONArray.fromObject(entity);
        ActionContext.getContext().put("department", entity);
        jsonResult = "{'result':'true','entity':" + json + "}";
        return SUCCESS;
    }

    public String department_del() {
        if (entity.getId() != null) {
            jsonResult = "{'result':'" + departmentService.delete(entity.getId()) + "'}";
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
        if (entity == null) {
            entity = new Department();
        }
        return entity;
    }
}
