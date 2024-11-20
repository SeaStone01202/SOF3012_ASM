package com.sof3012.controller.video;

import com.sof3012.entity.History;
import com.sof3012.entity.User;
import com.sof3012.entity.Video;
import com.sof3012.service.HistoryService;
import com.sof3012.service.UserService;
import com.sof3012.service.VideoService;
import com.sof3012.service.impl.HistoryServiceImpl;
import com.sof3012.service.impl.UserServiceImpl;
import com.sof3012.service.impl.VideoServiceImpl;
import com.sof3012.utils.JwtUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet("/watch")
public class WatchVideoController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private VideoService videoService = new VideoServiceImpl();

    private HistoryService historyService = new HistoryServiceImpl();

    private UserService userService = new UserServiceImpl();

    private JwtUtil jwtUtil = new JwtUtil();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String href = req.getParameter("v");

        watchingVideo(href, req, resp);
        doGetHistory(href, req, resp);

        req.getRequestDispatcher("/views/user/detail.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String href = req.getParameter("href"); // Lấy URL parameter
        String reaction = req.getParameter("reaction");// Lấy URL parameter
        String action = req.getParameter("action");
        String currentUserName = jwtUtil.getUsernameFromToken((String) req.getSession().getAttribute("jwtToken"));
        User currentUser = userService.findByUsername(currentUserName);
        Video video = videoService.getVideo(href);

        if (currentUser != null && video != null) {
            History updatedHistory = historyService.reactVideo(currentUser, video, Boolean.parseBoolean(reaction));
            if (reaction.equals("true")) {
                video.setLikes(video.getLikes() + 1);
            } else {
                video.setDislikes(video.getDislikes() + 1);
            }
            if (updatedHistory != null) {
                resp.setStatus(HttpServletResponse.SC_OK);
                resp.setContentType("application/json");
                resp.getWriter().write("{\"likes\": " + video.getLikes() + ", \"dislikes\": " + video.getDislikes() + "}");
            } else {
                resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
                resp.getWriter().write("{\"error\": \"Failed to update reaction\"}");
            }
        } else {
            resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            resp.getWriter().write("{\"error\": \"Invalid user or video\"}");
        }
    }



    private void watchingVideo(String href, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Video video = videoService.getVideo(href);
        if (video != null) {
            video.setViews(video.getViews() + 1);
            videoService.update(video);
            req.setAttribute("videoWatching", video);
        }
    }

    private void doGetHistory(String href, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String currentUserName = jwtUtil.getUsernameFromToken((String) req.getSession().getAttribute("jwtToken"));
        Video video = videoService.getVideo(href);
        User currentUser = userService.findByUsername(currentUserName);
        if (currentUser != null) {
            History history = historyService.addHistory(currentUser, video);
        }
    }
}
