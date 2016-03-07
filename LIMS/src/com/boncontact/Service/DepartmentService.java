package com.boncontact.Service;


import com.boncontact.Domain.Department;

import java.util.List;

public interface DepartmentService{
    boolean save(Department entity);
    List<Department> findAll();
    Department getById(Long id);
    boolean update(Department entity);
    boolean delete(Long id);

}

