package com.sof3012.repository;

import com.sof3012.entity.User;

public interface UserRepository extends GenericRepository<User, Integer> {

    User findByUsernameAndEmailAndPassword(String username, String email, String password);

}
