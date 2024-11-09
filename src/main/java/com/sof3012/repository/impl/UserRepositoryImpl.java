package com.sof3012.repository.impl;

import com.sof3012.entity.User;
import com.sof3012.repository.UserRepository;
import jakarta.persistence.EntityManager;

import java.util.List;

public class UserRepositoryImpl extends GenericRepositoryImpl<User, Integer> implements UserRepository {

    public UserRepositoryImpl(EntityManager em) {
        super(em);
    }

    @Override
    public List<User> findAll() {
        return super.findAll(User.class, true);
    }

    @Override
    public List<User> findAll(int pageNumber, int pageSize) {
        return super.findAll(User.class, true, pageNumber, pageSize);
    }

    @Override
    public User findByUsernameAndEmailAndPassword(String username, String email, String password) {
        String sql = "SELECT o FROM User o WHERE o.username = :username AND o.email = :email AND o.password = :password";
        return super.findOne(User.class, sql, username, email, password);
    }

}
