package com.boncontact.Base;

import com.boncontact.utils.GenericsUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Transactional
public class BaseDaoImpl<T> implements BaseDao<T> {
    @Resource
    private SessionFactory sessionFactory;
    private Class<T> clazz;

    public BaseDaoImpl() {
        try {
            clazz= GenericsUtils.getSuperClassGenricType(this.getClass());
            System.out.printf(clazz.getSimpleName());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    protected Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public void save(T entity) {
        try {
            getSession().save(entity);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void delete(T entity) {
        try {
            if (entity != null) {
                getSession().delete(entity);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void update(T entity) {
        try {
            getSession().update(entity);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public T getById(Long id) {
        T entity = null;
        if (id != null) {
            entity = (T) getSession().get(clazz, id);
        }
        return entity;
    }

    @Override
    public List<T> findBySQL(String str) {
        return getSession().createQuery(//
                "FROM " + clazz.getSimpleName() + " c " + str)//
                .list();
    }

    @Override
    public List<T> findAll() {
        return getSession().createQuery(//
                "FROM " + clazz.getSimpleName())//
                .list();
    }

}
