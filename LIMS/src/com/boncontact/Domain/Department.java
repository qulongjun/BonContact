package com.boncontact.Domain;

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
}
