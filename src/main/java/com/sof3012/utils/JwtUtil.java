package com.sof3012.utils;

import io.jsonwebtoken.*;
import io.jsonwebtoken.security.Keys;

import java.security.Key;
import java.util.Date;

public class JwtUtil {

    // Secret key được tạo tự động
    private static final Key key = Keys.secretKeyFor(SignatureAlgorithm.HS256);

    // Thời gian hết hạn token (1 giờ)
    private static final long EXPIRATION_TIME = 1000 * 60 * 60;

    /**
     * Tạo JWT token
     *
     * @param username Tên người dùng
     * @return JWT token dưới dạng chuỗi
     */
    public String generateToken(String username, String role) {
        return Jwts.builder()
                .setSubject(username)
                .claim("role", role) // Thêm role vào claims
                .setIssuedAt(new Date(System.currentTimeMillis()))
                .setExpiration(new Date(System.currentTimeMillis() + EXPIRATION_TIME))
                .signWith(SignatureAlgorithm.HS256, key)
                .compact();
    }


    /**
     * Kiểm tra tính hợp lệ của token (không cần đối chiếu username)
     *
     * @param token JWT token
     * @return true nếu hợp lệ, false nếu không
     */
    public boolean validateToken(String token) {
        try {
            Jwts.parserBuilder().setSigningKey(key).build().parseClaimsJws(token);
            return true;
        } catch (JwtException e) {
            return false;
        }
    }

    /**
     * Kiểm tra tính hợp lệ của token và username
     *
     * @param token    JWT token
     * @param username Tên người dùng cần xác thực
     * @return true nếu token hợp lệ và thuộc về username, false nếu không
     */
    public boolean validateToken(String token, String username) {
        String tokenUsername = getUsernameFromToken(token);
        return (tokenUsername.equals(username) && !isTokenExpired(token));
    }

    /**
     * Lấy username từ JWT token
     *
     * @param token JWT token
     * @return Tên người dùng (username)
     */
    public String getUsernameFromToken(String token) {
        return parseToken(token).getSubject();                // Lấy thông tin "subject" từ token
    }

    /**
     * Kiểm tra xem token đã hết hạn hay chưa
     *
     * @param token JWT token
     * @return true nếu token đã hết hạn, false nếu còn hợp lệ
     */
    public boolean isTokenExpired(String token) {
        Date expiration = parseToken(token).getExpiration();  // Lấy thời gian hết hạn
        return expiration.before(new Date());                 // So sánh với thời gian hiện tại
    }

    /**
     * Phân tích và kiểm tra tính hợp lệ của JWT token
     *
     * @param token JWT token
     * @return Các thông tin bên trong token (claims)
     * @throws JwtException nếu token không hợp lệ hoặc hết hạn
     */
    private Claims parseToken(String token) throws JwtException {
        return Jwts.parserBuilder()
                .setSigningKey(key)                          // Thiết lập key để kiểm tra chữ ký
                .build()
                .parseClaimsJws(token)                        // Phân tích token
                .getBody();
    }

    public String extractRole(String token) {
        return parseToken(token).get("role", String.class); // Lấy thông tin "role" từ claims
    }


}
