package com.sof3012.repository.impl;

import com.sof3012.entity.User;
import com.sof3012.repository.UserRepository;
import jakarta.persistence.EntityManager;

import java.util.ArrayList;
import java.util.List;

public class UserRepositoryImpl extends GenericRepositoryImpl<User, Integer> implements UserRepository {

    public UserRepositoryImpl(EntityManager em, Class<User> entityClass) {
        super(em, entityClass);
    }

    @Override
    public User findByUsernameOrEmailAndPassword(String username, String email, String password) {
        StringBuilder query = new StringBuilder("SELECT u FROM User u WHERE u.password = ?1");

        // Dùng list để lưu tham số truyền vào
        List<Object> params = new ArrayList<>();
        params.add(password); // ?1 sẽ là password

        int index = 2; // Bắt đầu từ ?2 cho các tham số tiếp theo

        // Tạo điều kiện động cho username
        if (username != null && !username.isEmpty()) {
            query.append(" AND u.username = ?").append(index);
            params.add(username);
            index++;
        }

        // Tạo điều kiện động cho email
        if (email != null && !email.isEmpty()) {
            query.append(" AND u.email = ?").append(index);
            params.add(email);
        }

        // Chuyển query thành chuỗi
        String sql = query.toString();

        // Truyền toàn bộ các tham số vào findOne
        return super.findOne(sql, params.toArray());
    }


    @Override
    public User findByUsername(String username) {
        String sql = "SELECT u FROM User u WHERE u.username = :username";
        return super.findOne(sql, username);
    }

    @Override
    public User findByEmail(String email) {
        String sql = "SELECT u FROM User u WHERE u.email = :email";
        return super.findOne(sql, email);
    }
}
