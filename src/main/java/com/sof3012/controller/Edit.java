package com.sof3012.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.sof3012.entity.Favorite;
import com.sof3012.entity.User;
import com.sof3012.service.UserService;

import java.io.IOException;
import java.util.List;

@WebServlet("/edit")
public class Edit extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        var id = req.getParameter("id");
        if (!id.trim().isEmpty()) {
            var service = new UserService(req, resp);
            User entityFinded = service.findById(id);
            List<Favorite> videos = entityFinded.getFavorites();
            req.setAttribute("userFinded", entityFinded); // Thêm user vào request
            req.setAttribute("favorites", videos);
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        }
    }
}
