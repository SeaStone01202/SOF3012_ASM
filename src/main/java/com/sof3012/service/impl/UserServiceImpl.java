package com.sof3012.service.impl;

import com.sof3012.constant.MessageNoticeSessionAttribute;
import com.sof3012.entity.User;
import com.sof3012.repository.UserRepository;
import com.sof3012.repository.impl.UserRepositoryImpl;
import com.sof3012.service.UserService;
import com.sof3012.utils.HibernateUtil;
import com.sof3012.utils.JwtUtil;
import jakarta.persistence.EntityManager;

import java.util.List;

public class UserServiceImpl implements UserService {

    private UserRepository repository;
    private EntityManager em;
    private JwtUtil jwtUtil;  // Khởi tạo JwtUtil

    public UserServiceImpl() {
        this.em = HibernateUtil.getEntityManager();
        this.repository = new UserRepositoryImpl(em, User.class);
        this.jwtUtil = new JwtUtil();  // Khởi tạo JwtUtil
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
    public String login(String input, String password) {
        boolean isEmail = isValidEmail(input);
        User user = null;

        // Kiểm tra thông tin đăng nhập
        if (isEmail) {
            user = repository.findByUsernameOrEmailAndPassword(null, input, password);
        } else {
            user = repository.findByUsernameOrEmailAndPassword(input, null, password);
        }

        if (user != null) {
            return jwtUtil.generateToken(user.getUsername(), String.valueOf(user.getIsAdmin()));  // Trả về JWT token
        } else {
            return null;
        }
    }

    private boolean isValidEmail(String input) {
        String emailRegex = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";
        return input.matches(emailRegex);
    }

    @Override
    public String changePassword(String token, String oldPassword, String newPassword) {
        String typeMessageNoticeSuccess = "/" + MessageNoticeSessionAttribute.MESSAGE_TYPE_SUCCESS;
        String typeMessageNoticeError = "/" + MessageNoticeSessionAttribute.MESSAGE_TYPE_ERROR;
        String message = "Thay đổi mật khẩu thành công" + typeMessageNoticeSuccess;


        if (oldPassword == null || oldPassword.trim().isEmpty()) {
            return message = "Mật khẩu cũ không được để trống" + typeMessageNoticeError;
        }

        if (newPassword == null || newPassword.trim().isEmpty()) {
            return message = "Mật khẩu mới không được để trống" + typeMessageNoticeError;
        }

        if (newPassword.equals(oldPassword)) {
            return message = "Mật khẩu mới không được trùng với mật khẩu cũ" + typeMessageNoticeError;
        }

        String username = jwtUtil.getUsernameFromToken(token);
        if (username == null) {
            return message = "Không tìm thấy username từ token" + typeMessageNoticeError;
        }

        User user = findByUsername(username);
        if (user == null) {
            return message = "Không tìm thấy người dùng" + typeMessageNoticeError;
        }

        if (!user.getPassword().equals(oldPassword)) {
            return message = "Mật khẩu cũ không đúng" + typeMessageNoticeError;
        }

        user.setPassword(newPassword);
        User updatedUser = repository.update(user);
        if (updatedUser == null) {
            return message = "Thay đổi mật khẩu thất bại" + typeMessageNoticeError;
        }
        
        return message;
    }


}
