package com.sof3012.controller.user;

import com.sof3012.constant.JwtSessionAttribute;
import com.sof3012.constant.MessageNoticeSessionAttribute;
import com.sof3012.constant.UserSessionAttribute;
import com.sof3012.utils.JwtUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/logout")
public class UserLogout extends HttpServlet {

    private static final long serialVersionUID = 1L;

    JwtUtil jwtUtil = new JwtUtil();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String token = req.getSession().getAttribute("jwtToken").toString();

        if (token != null && jwtUtil.validateToken(token)) {
            req.getSession().removeAttribute(UserSessionAttribute.CURRENT_USER_USERNAME);
            req.getSession().removeAttribute(UserSessionAttribute.CURRENT_USER_ROLE);
            req.getSession().removeAttribute(JwtSessionAttribute.JWT_SESSION_NAME);
            req.setAttribute(MessageNoticeSessionAttribute.MESSAGE_NOTICE, "Đăng xuất thành công !");
            req.setAttribute(MessageNoticeSessionAttribute.MESSAGE_TYPE, MessageNoticeSessionAttribute.MESSAGE_TYPE_SUCCESS);
            resp.sendRedirect(req.getContextPath() + "/home");
        } else {
            resp.sendRedirect(req.getContextPath() + "/not_found");
        }
    }
}
