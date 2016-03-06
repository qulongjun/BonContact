package com.boncontact.Base;

import java.util.List;

/**
 * 公用Dao接口，定义了Dao层最基本的方法
 */
public interface BaseDao<T> {
    /**
     * save()：保存对象
     *
     * @param entity
     *            ：实体对象
     */
    long save(T entity);

    /**
     * delete()：删除对象
     *
     * @param entity
     *            ：实体对象
     */
    void delete(T entity);

    /**
     * update():更新对象
     *
     * @param entity
     *            ：更新后的对象实体
     */
    void update(T entity);

    /**
     * getById():根据id查找
     *
     * @param id
     *            :需要查找的id值
     * @return
     */
    T getById(Long id);

    /**
     * findBySQL：根据SQL语句查找
     *
     * @param str
     *            :str:限制条件
     * @return
     */
    List<T> findBySQL(String str);

    /**
     * findAll:查找全部
     * @return
     */
    List<T> findAll();
}
