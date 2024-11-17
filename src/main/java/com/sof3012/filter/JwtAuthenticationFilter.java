package com.sof3012.filter;

import com.sof3012.utils.JwtUtil;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebFilter("/*")
public class JwtAuthenticationFilter implements Filter {

    private JwtUtil jwtUtil = new JwtUtil();

    private final static List<String> urlProtectedAdmin = List.of("/admin");

    private final static List<String> urlProtectedUser = List.of("/profile", "/logout", "/change_password");

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        // Lấy URL yêu cầu
        String requestUrl = httpRequest.getRequestURI().substring(httpRequest.getContextPath().length());

        // Kiểm tra các URL cần bảo vệ
        if (checkUrlProtected(requestUrl, urlProtectedAdmin)) {
            if (!isJwtValid(httpRequest)) {
                httpResponse.sendRedirect(httpRequest.getContextPath() + "/login");
                return;
            }

            // Kiểm tra vai trò (chỉ admin mới được phép truy cập)
            String role = jwtUtil.extractRole((String) httpRequest.getSession().getAttribute("jwtToken"));
            if (!"admin".equalsIgnoreCase(role)) {
                httpResponse.sendRedirect(httpRequest.getContextPath() + "/not_found");
                return;
            }
        } else if (checkUrlProtected(requestUrl, urlProtectedUser)) {
            if (!isJwtValid(httpRequest)) {
                httpResponse.sendRedirect(httpRequest.getContextPath() + "/login");
                return;
            }
            // User được phép truy cập, không cần kiểm tra vai trò.
        }

        // Nếu không phải URL cần bảo vệ, tiếp tục chuỗi lọc
        chain.doFilter(request, response);
    }


    private boolean checkUrlProtected(String url, List<String> protectedUrls) {
        return protectedUrls.stream().anyMatch(url::startsWith);
    }

    private boolean isJwtValid(HttpServletRequest request) {
        String token = (String) request.getSession().getAttribute("jwtToken");
        return token != null && jwtUtil.validateToken(token);
    }

}
