package com.boncontact.Base;

import java.util.List;

/**
 * 公用Service接口，定义了Service层最基本的方法
 */
public interface BaseService<T> {
    /**
     * 保存对象集合
     */
    boolean save(List<T> entity);

    /**
     * 批量删除对象
     * @param ids
     */
    boolean delete(Long[] ids);

    /**
     * 批量更新对象
     * @param entity
     */
    boolean update(List<T> entity);

    /**
     * 批量查找数据,通过id
     * @param ids
     */
    List<T> findByIds(Long[] ids);

    /**
     * findBySQL:根据SQL语句查询
     * @param str
     * @return
     */
    List<T> findBySQL(String str);

    /**
     * findAll:查找全部
     * @return
     */
    List<T> findAll();
}
