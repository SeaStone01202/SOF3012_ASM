package com.sof3012.controller.video;

import com.sof3012.entity.History;
import com.sof3012.entity.User;
import com.sof3012.service.HistoryService;
import com.sof3012.service.UserService;
import com.sof3012.service.impl.HistoryServiceImpl;
import com.sof3012.service.impl.UserServiceImpl;
import com.sof3012.utils.JwtUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/history")
public class HistoryVideoController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private HistoryService historyService = new HistoryServiceImpl();

    private UserService userService = new UserServiceImpl();

    private JwtUtil jwtUtil = new JwtUtil();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String token = req.getSession().getAttribute("jwtToken").toString();

        String username = jwtUtil.getUsernameFromToken(token);

        User currentUser = userService.findByUsername(username);

        if (currentUser != null) {
            List<History> histories = historyService.getHistoryByUser(currentUser);
            req.setAttribute("historyList", histories);
        }

        req.getRequestDispatcher("/views/user/history.jsp").forward(req, resp);
    }
}
