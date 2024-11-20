package com.sof3012.repository;

import com.sof3012.entity.User;

public interface UserRepository extends GenericRepository<User, Integer> {

    User findByUsernameOrEmailAndPassword(String username, String email, String password);

    User findByUsername(String username);

    User findByEmail(String email);
}
