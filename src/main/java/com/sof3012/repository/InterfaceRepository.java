package com.sof3012.repository;

import java.util.List;

public interface InterfaceRepository<T, E>{

    T save (T entity);

    T update (T entity);

    boolean delete (E id);

    List<T> findAll();

    T findById(E id);
}
