package com.boncontact.Domain;

import java.util.ArrayList;
import java.util.List;

/**
 * 部门实体
 */
public class Department {
    //编号
    private Long id;
    //部门名称
    private String name;
    //备注信息
    private String other;
    //用户组列表
    private List<User_Group> user_groups=new ArrayList<User_Group>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other;
    }

    public List<User_Group> getUser_groups() {
        return user_groups;
    }

    public void setUser_groups(List<User_Group> user_groups) {
        this.user_groups = user_groups;
    }

    @Override
    public String toString() {
        return "Department{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", other='" + other + '\'' +
                ", user_groups=" + user_groups +
                '}';
    }
}
