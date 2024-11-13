package com.sof3012.controller;

import com.sof3012.constant.SessionAttri;
import com.sof3012.constant.Notice.SessionNotice;
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
        User userCurrent = (User) req.getSession().getAttribute(SessionAttri.CURRENT_USER);
        String oldPassword = req.getParameter("oldPassword");
        String newPassword = req.getParameter("newPassword");

        if (userCurrent == null) {
            req.getSession().setAttribute(SessionNotice.MESSAGE_NOTICE, "Lỗi tồn tại ! Không có User");
            resp.sendRedirect(req.getContextPath() + "/login");
        } else {
            if (!userCurrent.getPassword().equals(oldPassword)) {
                req.getSession().setAttribute(SessionNotice.MESSAGE_NOTICE, "Sai mật khẩu cũ !");
                resp.sendRedirect(req.getContextPath() + "/login");
            } else {
                if (userCurrent.getPassword().equals(newPassword)) {
                    req.getSession().setAttribute(SessionNotice.MESSAGE_NOTICE, "Trùng mật khẩu cũ !");
                    resp.sendRedirect(req.getContextPath() + "/login");
                } else {
                    userCurrent.setPassword(newPassword);
                    userService.update(userCurrent);
                    req.getSession().setAttribute(SessionNotice.MESSAGE_NOTICE, "Thay đổi mật khẩu thành công");
                    req.getSession().setAttribute(SessionNotice.MESSAGE_TYPE_SUCCESS, null);
                    req.setAttribute("delayReload", true);
                    req.getRequestDispatcher("/views/user/change_password.jsp").forward(req, resp);
                }
            }

        }
    }


}
