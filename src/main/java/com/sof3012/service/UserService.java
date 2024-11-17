package com.sof3012.service;

import com.sof3012.entity.User;

import java.util.List;

public interface UserService {

    User create(String email, String username, String password);

    User update(User entity);

    User delete(String username);

    User findById(Integer id);

    List<User> findAll();

    User findByEmail(String email);

    User findByUsername(String username);

    String login(String input, String password);

    String changePassword(String token, String oldPassword, String newPassword);
}
