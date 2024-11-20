package com.sof3012.controller;

import com.sof3012.entity.Video;
import com.sof3012.service.VideoService;
import com.sof3012.service.impl.VideoServiceImpl;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/home")
public class Index extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private VideoService videoService = new VideoServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext context = getServletContext();

        List<Video> listAllVideo = (List<Video>) context.getAttribute("listAllVideo");

        if (listAllVideo == null) {
            listAllVideo = videoService.getAllVideos();
            context.setAttribute("listAllVideo", listAllVideo);
        }

        req.getRequestDispatcher("/views/index.jsp").forward(req, resp);
    }



}
