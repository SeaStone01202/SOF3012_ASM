package com.sof3012.service;

import com.sof3012.entity.User;
import com.sof3012.repository.UserRepository;
import com.sof3012.utils.HibernateUtil;
import jakarta.persistence.EntityManager;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.util.List;

public class UserService implements InterfaceService<User, String>{

    private HttpServletRequest request;

    private HttpServletResponse response;

    private EntityManager entityManager;

    private UserRepository repository;

    public UserService(HttpServletRequest request, HttpServletResponse response) {
        this.entityManager = HibernateUtil.getEntityManager();
        this.request = request;
        this.response = response;
        this.repository = new UserRepository(User.class, entityManager);
    }

    @Override
    public User create(User entity) {
        return null;
    }

    @Override
    public User update(User entity, String id) {
        return null;
    }

    @Override
    public boolean delete(String id) {
        return false;
    }

    @Override
    public List<User> findAll() {
        return repository.findAll();
    }

    @Override
    public User findById(String id) {
        return repository.findById(id);
    }
}
