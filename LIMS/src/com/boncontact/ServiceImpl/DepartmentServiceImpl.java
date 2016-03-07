package com.boncontact.ServiceImpl;


import com.boncontact.Dao.DepartmentDao;
import com.boncontact.Domain.Department;
import com.boncontact.Service.DepartmentService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class DepartmentServiceImpl implements DepartmentService {
    @Resource
    private DepartmentDao departmentDao;
    @Override
    public boolean save(Department entity) {
        if(entity!=null){
            long id = departmentDao.save(entity);
            return id>0;
        }
        return false;
    }

    @Override
    public List<Department> findAll() {
        return departmentDao.findAll();
    }

    @Override
    public Department getById(Long id) {
        return departmentDao.getById(id);
    }

    @Override
    public boolean update(Department entity) {
        if(entity.getId()!=null){
            try {
                departmentDao.update(entity);
                return true;
            }catch (Exception e){
                throw new RuntimeException(e);
            }
        }
        return false;
    }

    @Override
    public boolean delete(Long id) {
        if(id!=null){
            try {
                departmentDao.delete(departmentDao.getById(id));
                return true;
            }catch (Exception e){
                throw new RuntimeException(e);
            }
        }
        return false;
    }
}
