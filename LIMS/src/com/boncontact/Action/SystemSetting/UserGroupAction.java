package com.boncontact.Action.SystemSetting;

import com.boncontact.Base.BaseAction;
import com.boncontact.Domain.Department;
import com.boncontact.Domain.User_Group;
import com.opensymphony.xwork2.ActionContext;
import net.sf.json.JSONArray;
import org.springframework.stereotype.Component;

@Component("user_group")
public class UserGroupAction extends BaseAction<User_Group> {
    private User_Group entity;
    private String jsonResult;
    private Long departmentId;

    public String user_group_add() {
        if (departmentId!=null) {
            //entity.setDepartment(departmentService.getById(departmentId));
            //Department department =departmentService.getById(departmentId);
            //department.getUser_groups().add(entity);
            jsonResult = "{'result':'true'}";
        }
        if (entity != null) {
            //jsonResult = "{'result':'" + userGroupService.save(entity) + "'}";
        } else {
            jsonResult = "{'result':'false'}";
        }
        return SUCCESS;
    }

    public String user_group_edit() {
        if (entity.getId() != null) {
            jsonResult = "{'result':'" + userGroupService.update(entity) + "'}";
        }
        return SUCCESS;
    }

    public String user_group_editPage() {
        long id = entity.getId();
        if (id > 0) {
            entity = userGroupService.getById(id);
        }
        JSONArray json = JSONArray.fromObject(entity);
        ActionContext.getContext().put("department", entity);
        jsonResult = "{'result':'true','entity':" + json + "}";
        return SUCCESS;
    }

    public String user_group_del() {
        if (entity.getId() != null) {
            jsonResult = "{'result':'" + userGroupService.delete(entity.getId()) + "'}";
        }
        return SUCCESS;
    }

    @Override
    public User_Group getModel() {
        if (entity == null) {
            entity = new User_Group();
        }
        return entity;
    }

    public String getJsonResult() {
        return jsonResult;
    }

    public void setJsonResult(String jsonResult) {
        this.jsonResult = jsonResult;
    }

    public Long getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Long departmentId) {
        this.departmentId = departmentId;
    }
}
