package com.sof3012.controller.user;

import com.sof3012.constant.JwtSessionAttribute;
import com.sof3012.constant.MessageNoticeSessionAttribute;
import com.sof3012.entity.User;
import com.sof3012.service.UserService;
import com.sof3012.service.impl.UserServiceImpl;
import com.sof3012.utils.JwtUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/change_password")
public class UserChangePassword extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private UserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/user/change_password.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String oldPassword = req.getParameter("oldPassword");
        String newPassword = req.getParameter("newPassword");

        String token = req.getSession().getAttribute(JwtSessionAttribute.JWT_SESSION_NAME).toString();

        if (token != null) {
            String massage =  userService.changePassword(token, oldPassword, newPassword);
            if (massage != null) {
                String[] parts = massage.split("/");
                String message = parts[0].trim();
                System.out.println(message);
                String type = parts[1].trim();
                System.out.println(type);
                req.setAttribute(MessageNoticeSessionAttribute.MESSAGE_NOTICE, message);
                if (type.equals(MessageNoticeSessionAttribute.MESSAGE_TYPE_SUCCESS)) {
                    req.setAttribute(MessageNoticeSessionAttribute.MESSAGE_TYPE, MessageNoticeSessionAttribute.MESSAGE_TYPE_SUCCESS);
                    req.getRequestDispatcher("/views/index.jsp").forward(req, resp);
                }

                if (type.equals(MessageNoticeSessionAttribute.MESSAGE_TYPE_ERROR)) {
                    req.setAttribute(MessageNoticeSessionAttribute.MESSAGE_TYPE, MessageNoticeSessionAttribute.MESSAGE_TYPE_ERROR);
                    req.getRequestDispatcher("/views/user/change_password.jsp").forward(req, resp);
                }
            } else {
                req.setAttribute(MessageNoticeSessionAttribute.MESSAGE_NOTICE, massage);
                req.setAttribute(MessageNoticeSessionAttribute.MESSAGE_TYPE, MessageNoticeSessionAttribute.MESSAGE_TYPE_ERROR);
                req.getRequestDispatcher("/views/user/change_password.jsp").forward(req, resp);
            }
        }
    }

}
