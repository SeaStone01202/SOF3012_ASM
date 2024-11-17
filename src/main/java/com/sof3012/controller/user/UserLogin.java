package com.sof3012.controller.user;

import com.sof3012.constant.JwtSessionAttribute;
import com.sof3012.constant.MessageNoticeSessionAttribute;
import com.sof3012.constant.UserSessionAttribute;
import com.sof3012.service.UserService;
import com.sof3012.service.impl.UserServiceImpl;
import com.sof3012.utils.JwtUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/login")
public class UserLogin extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private UserService userService = new UserServiceImpl();
    private JwtUtil jwtUtil = new JwtUtil();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/user/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        String token = userService.login(username.trim(), password);
        if (token != null) {
            req.getSession().setAttribute(JwtSessionAttribute.JWT_SESSION_NAME, token);
            String usernameCurrent = jwtUtil.getUsernameFromToken(token);
            String roleCurrent = jwtUtil.extractRole(token);
            System.out.println(roleCurrent);
            req.getSession().setAttribute(UserSessionAttribute.CURRENT_USER_ROLE, roleCurrent);
            req.getSession().setAttribute(UserSessionAttribute.CURRENT_USER_USERNAME, usernameCurrent);
            req.setAttribute(MessageNoticeSessionAttribute.MESSAGE_NOTICE, "Đăng nhập thành công !");
            req.setAttribute(MessageNoticeSessionAttribute.MESSAGE_TYPE, MessageNoticeSessionAttribute.MESSAGE_TYPE_SUCCESS);
            req.getRequestDispatcher("/views/index.jsp").forward(req, resp);
        } else {
            req.setAttribute(MessageNoticeSessionAttribute.MESSAGE_NOTICE, "Sai mật khẩu hoặc tài khoản");
            req.setAttribute(MessageNoticeSessionAttribute.MESSAGE_TYPE, MessageNoticeSessionAttribute.MESSAGE_TYPE_ERROR);
            req.getRequestDispatcher("/views/user/login.jsp").forward(req, resp);
        }
    }
}

