package com.boncontact.Domain;

/**
 * Created by qulongjun on 16/3/5.
 */
public class User {
    //用户id
    private Long id;
    //用户姓名
    private String name;

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
}
