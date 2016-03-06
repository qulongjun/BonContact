package com.boncontact.ServiceImpl;


import com.boncontact.Base.BaseServiceImpl;
import com.boncontact.Dao.DepartmentDao;
import com.boncontact.Domain.Department;
import com.boncontact.Service.DepartmentService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service
@Transactional
public class DepartmentServiceImpl implements DepartmentService {
    @Resource
    private DepartmentDao departmentDao;
    @Override
    public boolean save(Department entity) {
        if(entity!=null){
            long id = departmentDao.save(entity);
            System.out.println("id的值为"+id);
            return id>0;
        }
        return false;
    }
}
