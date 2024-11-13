package com.sof3012.service.impl;

import com.sof3012.entity.User;
import com.sof3012.repository.UserRepository;
import com.sof3012.repository.impl.UserRepositoryImpl;
import com.sof3012.service.UserService;
import com.sof3012.utils.HibernateUtil;
import jakarta.persistence.EntityManager;

import java.util.List;

public class UserServiceImpl implements UserService {

    private UserRepository repository;

    private EntityManager em;

    public UserServiceImpl() {
        this.em = HibernateUtil.getEntityManager();
        this.repository = new UserRepositoryImpl(em, User.class);
    }

    @Override
    public User create(String email, String username, String password) {
        User newUser = new User();
        newUser.setEmail(email);
        newUser.setUsername(username);
        newUser.setPassword(password);
        return repository.create(newUser);
    }

    @Override
    public User update(User entity) {
        return repository.update(entity);
    }

    @Override
    public User delete(String username) {
        User user = repository.findByUsername(username);
        user.setActive(false);
        return repository.update(user);
    }

    @Override
    public List<User> findAll() {
        return repository.findAll(true);
    }

    @Override
    public User findById(Integer id) {
        return repository.findById(id);
    }

    @Override
    public User findByEmail(String email) {
        return repository.findByEmail(email);
    }

    @Override
    public User findByUsername(String username) {
        return repository.findByUsername(username);
    }

    @Override
    public User login(String input, String password) {
        boolean isEmail = isValidEmail(input);
        if (isEmail) {
            return repository.findByUsernameOrEmailAndPassword(null, input, password);
        } else {
            return repository.findByUsernameOrEmailAndPassword(input, null, password);
        }
    }

    private boolean isValidEmail(String input) {
        String emailRegex = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";
        return input.matches(emailRegex);
    }
}
