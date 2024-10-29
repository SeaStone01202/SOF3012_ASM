package com.sof3012.service;

import java.util.List;

public interface InterfaceService<T, E>{

    T create(T entity);

    T update(T entity, E id);

    boolean delete(E id);

    List<T> findAll();

    T findById(E id);
}
