package com.sof3012.repository;

import com.sof3012.entity.User;
import jakarta.persistence.EntityManager;

import java.util.List;

public class UserRepository extends GenericRepository<User, String> implements InterfaceRepository<User, String> {

    public UserRepository(Class<User> entityClass, EntityManager em) {
        super(entityClass, em);
    }

    @Override
    public User save(User entity) {
        return super.createAndReturnEntity(entity);
    }

    @Override
    public User update(User entity) {
        return super.updateAndReturnEntity(entity);
    }

    @Override
    public boolean delete(String id) {
        return super.deleteByIdAndReturnResult(id);
    }

    @Override
    public User findById(String id) {
        return super.findByIdAndReturnEntity(id);
    }

    @Override
    public List<User> findAll() {
        return super.getAllAndReturnList();
    }
}
