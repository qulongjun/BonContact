package com.boncontact.ServiceImpl;

import com.boncontact.Dao.UserGroupDao;
import com.boncontact.Domain.User_Group;
import com.boncontact.Service.UserGroupService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class UserGroupServiceImpl implements UserGroupService {
    @Resource
    private UserGroupDao userGroupDao;

    @Override
    public boolean save(User_Group entity) {
        if (entity != null) {
            long id = userGroupDao.save(entity);
            return id > 0;
        }
        return false;
    }

    @Override
    public List<User_Group> findAll() {
        return userGroupDao.findAll();
    }

    @Override
    public User_Group getById(Long id) {
        return userGroupDao.getById(id);
    }

    @Override
    public boolean update(User_Group entity) {
        if(entity.getId()!=null){
            try {
                userGroupDao.update(entity);
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
                userGroupDao.delete(userGroupDao.getById(id));
                return true;
            }catch (Exception e){
                throw new RuntimeException(e);
            }
        }
        return false;
    }
}
