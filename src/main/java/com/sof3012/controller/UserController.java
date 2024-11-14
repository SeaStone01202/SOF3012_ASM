package com.sof3012.controller;

import com.sof3012.constant.SessionAttri;
import com.sof3012.constant.SessionNotice;
import com.sof3012.entity.User;
import com.sof3012.service.UserService;
import com.sof3012.service.impl.UserServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(urlPatterns = {"/login", "/logout", "/register", "/change_password"})
public class UserController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private UserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String path = req.getServletPath();
        switch (path) {
            case "/login":
                doGetLogin(req, resp);
                break;
            case "/logout":
                doGetLogout(session, req, resp);
                break;
            case "/change_password":
                doGetChangePassword(req, resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String path = req.getServletPath();
        switch (path) {
            case "/login":
                doPostLogin(session, req, resp);
                break;
            case "/change_password":
                doPostChangePassword(session, req, resp);
                break;
        }
    }

    private void doGetLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/user/login.jsp").forward(req, resp);
    }

    private void doGetChangePassword(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/user/change_password.jsp").forward(req, resp);
    }

    private void doGetLogout(HttpSession session, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (session.getAttribute(SessionAttri.CURRENT_USER) != null) {
            session.removeAttribute(SessionAttri.CURRENT_USER);
            resp.sendRedirect(req.getContextPath() + "/index");
        } else {
            resp.sendRedirect(req.getContextPath() + "/login");
        }
    }

    private void doPostLogin(HttpSession session, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        User user = userService.login(username, password);
        if (user != null) {
            session.setAttribute(SessionAttri.CURRENT_USER, user);
            resp.sendRedirect(req.getContextPath() + "/index");
        } else {
            resp.sendRedirect(req.getContextPath() + "/login");
        }
    }

    private void doPostChangePassword(HttpSession session, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String oldPassword = req.getParameter("oldPassword");

        String newPassword = req.getParameter("newPassword");

        String setStyleNotice = SessionNotice.MESSAGE_TYPE_SUCCESS;

        String setValueNotice = "Thay đổi mật khẩu thành công";

        if(oldPassword.trim().isEmpty() || newPassword.trim().isEmpty()) {
            setStyleNotice = SessionNotice.MESSAGE_TYPE_ERROR;
            setValueNotice = "Chưa nhập đủ thông tin";
            return;
        }

        User userCurrent = (User) req.getSession().getAttribute(SessionAttri.CURRENT_USER);

        if (userCurrent == null) {
            setStyleNotice = SessionNotice.MESSAGE_TYPE_ERROR;
            setValueNotice = "Lỗi tồn tại ! Không có User";
            return;
        }

        if(!userCurrent.getPassword().equals(oldPassword)) {
            setStyleNotice = SessionNotice.MESSAGE_TYPE_ERROR;
            setValueNotice = "Sai mật khẩu cũ !";
            return;
        }

        if(userCurrent.getPassword().equals(newPassword)) {
            setStyleNotice = SessionNotice.MESSAGE_TYPE_ERROR;
            setValueNotice = "Trùng mật khẩu cũ !";
            return;
        }

        req.getSession().setAttribute(SessionNotice.MESSAGE_TYPE, setStyleNotice);
        req.getSession().setAttribute(SessionNotice.MESSAGE_NOTICE, setValueNotice);
        req.getRequestDispatcher("/views/user/change_password.jsp").forward(req, resp);

    }
}
