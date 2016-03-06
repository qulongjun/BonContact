package com.boncontact.Base;

import com.boncontact.utils.GenericsUtils;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;


@Transactional
public class BaseServiceImpl<T> implements BaseService<T> {
    private Class<T> clazz;

    public BaseServiceImpl(){
        try {
            clazz = GenericsUtils.getSuperClassGenricType(this.getClass());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    @Resource
    private BaseDao<T> baseDao;

    @Override
    public boolean save(List<T> entity) {
        try {
            if (entity != null) {
                for (T item : entity) {
                    if (item != null) {
                        baseDao.save(item);
                    }
                }
                return true;
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    @Override
    public boolean delete(Long[] ids) {
        try {
            if (ids != null) {
                for (Long id : ids) {
                    if (id != null) {
                        T tempEntity = baseDao.getById(id);
                        if (tempEntity != null) {
                            baseDao.delete(tempEntity);
                        }
                    }
                }
                return true;
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    @Override
    public boolean update(List<T> entity) {
        try {
            if (entity != null) {
                for (T item : entity) {
                    if (item != null) {
                        baseDao.update(item);
                    }
                }
                return true;
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    @Override
    public List<T> findByIds(Long[] ids) {
        List<T> listT = new ArrayList<T>();
        if (ids != null) {
            for (Long id : ids) {
                listT.add(baseDao.getById(id));
            }
        }
        return listT;
    }

    @Override
    public List<T> findBySQL(String str) {
        return baseDao.findBySQL(str);
    }

    @Override
    public List<T> findAll() {
        return baseDao.findAll();
    }
}
