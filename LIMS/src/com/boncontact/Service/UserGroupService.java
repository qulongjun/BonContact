package com.boncontact.Service;

import com.boncontact.Domain.User_Group;

import java.util.List;

public interface UserGroupService  {
    boolean save(User_Group entity);
    List<User_Group> findAll();
    User_Group getById(Long id);
    boolean update(User_Group entity);
    boolean delete(Long id);
}
