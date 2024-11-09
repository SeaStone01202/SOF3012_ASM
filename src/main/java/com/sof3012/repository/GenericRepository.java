package com.sof3012.repository;

import java.util.List;

public interface GenericRepository<T, E> {

    T create(T entity);

    T update(T entity);

    T delete(T entity);

    T findById(Class<T> entityClass, E idEntity);

    List<T> findAll();

    List<T> findAll(int pageNumber, int pageSize);
}
