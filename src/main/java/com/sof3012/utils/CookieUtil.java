package com.sof3012.utils;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CookieUtil {

    /**
     * Thêm cookie
     * @param name Tên cookie
     * @param value Giá trị cookie
     * @param hours Thời gian sống (giờ)
     * @param httpOnly Có đặt cookie là HTTP-Only không?
     * @param secure Có đặt cookie là Secure không?
     * @param resp HttpServletResponse
     * @return Cookie đã được tạo
     */
    public static Cookie add(String name, String value, int hours, boolean httpOnly, boolean secure, HttpServletResponse resp) {
        Cookie cookie = new Cookie(name, value);
        cookie.setMaxAge(hours * 60 * 60);
        cookie.setPath("/"); // Áp dụng cho toàn bộ ứng dụng
        cookie.setHttpOnly(httpOnly); // Ngăn JavaScript truy cập
        cookie.setSecure(secure); // Chỉ gửi qua HTTPS nếu cần
        resp.addCookie(cookie);
        return cookie;
    }

    /**
     * Lấy giá trị cookie
     * @param name Tên cookie
     * @param req HttpServletRequest
     * @return Giá trị cookie hoặc null nếu không tìm thấy
     */
    public static String get(String name, HttpServletRequest req) {
        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equalsIgnoreCase(name)) {
                    return cookie.getValue();
                }
            }
        }
        return null; // Không tìm thấy cookie
    }

    /**
     * Xóa cookie bằng cách đặt thời gian sống về 0
     * @param name Tên cookie
     * @param resp HttpServletResponse
     */
    public static void delete(String name, HttpServletResponse resp) {
        Cookie cookie = new Cookie(name, "");
        cookie.setMaxAge(0); // Hết hạn ngay lập tức
        cookie.setPath("/"); // Phải khớp với path ban đầu
        resp.addCookie(cookie);
    }
}
