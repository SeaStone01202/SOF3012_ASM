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

//        Tìm cái video mà user đó thả react
        History findReactInVideo = historyService.findByUserAndVideo(currentUser, video);
//        Nếu tìm được
        // Kiểm tra nếu reaction là null trong History
        if (findReactInVideo.getReaction() == null) {
            // Nếu reaction của History là null, tức là người dùng chưa react, thì set reaction mới từ request
            if (reaction.equals("true")) {
                video.setLikes(video.getLikes() + 1); // Thêm 1 like
            } else if (reaction.equals("false")) {
                video.setDislikes(video.getDislikes() + 1); // Thêm 1 dislike
            }
            findReactInVideo.setReaction(Boolean.parseBoolean(reaction)); // Cập nhật reaction mới
        }
// Kiểm tra nếu reaction trong History giống với reaction trong request, thì set lại thành null
        else if (findReactInVideo.getReaction().equals(Boolean.parseBoolean(reaction))) {
            findReactInVideo.setReaction(null); // Set lại thành null
            if (reaction.equals("true")) {
                video.setLikes(video.getLikes() - 1); // Giảm 1 like
            } else {
                video.setDislikes(video.getDislikes() - 1); // Giảm 1 dislike
            }
        }
// Nếu reaction trong History khác với reaction trong request, nghĩa là người dùng đổi từ like sang dislike hoặc ngược lại
        else {
            if (reaction.equals("true")) {
                video.setLikes(video.getLikes() + 1); // Thêm 1 like
                video.setDislikes(video.getDislikes() - 1); // Giảm 1 dislike
            } else {
                video.setLikes(video.getLikes() - 1); // Giảm 1 like
                video.setDislikes(video.getDislikes() + 1); // Thêm 1 dislike
            }
            findReactInVideo.setReaction(Boolean.parseBoolean(reaction)); // Cập nhật reaction mới
        }





        // Cập nhật video và lưu history
        if (findReactInVideo != null) {
            videoService.update(video);  // Lưu video với lượt like/dislike đã cập nhật
            historyService.editHistory(findReactInVideo);
            resp.setStatus(HttpServletResponse.SC_OK);
            resp.setContentType("application/json");
            resp.getWriter().write("{\"likes\": " + video.getLikes() + ", \"dislikes\": " + video.getDislikes() + "}");
        } else {
            resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            resp.getWriter().write("{\"error\": \"Failed to update reaction\"}");
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
