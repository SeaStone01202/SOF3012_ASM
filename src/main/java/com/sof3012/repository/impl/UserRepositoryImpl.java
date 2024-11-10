package com.sof3012.repository.impl;

import com.sof3012.entity.User;
import com.sof3012.repository.UserRepository;
import jakarta.persistence.EntityManager;

public class UserRepositoryImpl extends GenericRepositoryImpl<User, Integer> implements UserRepository {

    public UserRepositoryImpl(EntityManager em, Class<User> entityClass) {
        super(em, entityClass);
    }

    @Override
    public User findByUsernameAndEmailAndPassword(String username, String email, String password) {
        String sql = "SELECT o FROM User o WHERE o.username = :username AND o.email = :email AND o.password = :password";
        return super.findOne(sql, username, email, password);
    }
}
