create database PolyOA;

-- Tạo bảng User
CREATE TABLE [User] (
                        id INT IDENTITY(1,1) PRIMARY KEY,
                        username NVARCHAR(50) NOT NULL UNIQUE,
                        password NVARCHAR(50) NOT NULL,
                        fullname NVARCHAR(50),
                        email NVARCHAR(50) NOT NULL UNIQUE,
                        isAdmin BIT NOT NULL DEFAULT 0,
                        active BIT NOT NULL DEFAULT 1
);

-- Tạo bảng Video
CREATE TABLE Video (
                       id INT IDENTITY(1,1) PRIMARY KEY,
                       title NVARCHAR(50) NOT NULL,
                       description NVARCHAR(200) NOT NULL,
                       poster NVARCHAR(255) NOT NULL,
                       views INT NOT NULL DEFAULT 0,
                       likes INT NOT NULL DEFAULT 0,
                       dislikes INT NOT NULL DEFAULT 0,
                       link NVARCHAR(255) NOT NULL UNIQUE,
                       category NVARCHAR(50) NOT NULL,
                       date DATE NOT NULL DEFAULT GETDATE(),
                       active BIT NOT NULL DEFAULT 1,
                       userId INT,
                       CONSTRAINT FK_Video_User FOREIGN KEY (userId) REFERENCES [User](id)
);

-- Tạo bảng Event
CREATE TABLE Event (
                       id INT IDENTITY(1,1) PRIMARY KEY,
                       type VARCHAR(50) NOT NULL,  -- Thay NVARCHAR thành VARCHAR
                       details NVARCHAR(100),
                       date DATE NOT NULL DEFAULT GETDATE(),
                       active BIT NOT NULL DEFAULT 1,
                       userId INT,
                       videoId INT,
                       CONSTRAINT FK_Event_User FOREIGN KEY (userId) REFERENCES [User](id),
                       CONSTRAINT FK_Event_Video FOREIGN KEY (videoId) REFERENCES Video(id)
);

INSERT INTO [User] (username, password, fullname, email, isAdmin, active)
VALUES
    ('thach', '123', N'Hai Thach', 'thach@gmail.com', 1, 1),
    ('jane_smith', 'jane5678', 'Jane Smith', 'jane.smith@example.com', 0, 1),
    ('michael_brown', 'mike7890', 'Michael Brown', 'michael.brown@example.com', 0, 1),
    ('susan_williams', 'susan4321', 'Susan Williams', 'susan.williams@example.com', 1, 1),
    ('david_jones', 'david1122', 'David Jones', 'david.jones@example.com', 0, 1);


INSERT INTO Video (title, description, poster, link, category, userId)
VALUES
    (N'Phá đảo ASM java 4 trong 2 ca học - Phần giới thiệu', 'Description of Video 1', 'https://img.youtube.com/vi/0qfacwuQlu4/maxresdefault.jpg', 'https://www.youtube.com/embed/0qfacwuQlu4', N'Giáo Duc ', 1),
    (N'Phá đảo ASM Java 4 - Phần 1: Tạo DB, map entity và dựng các hàm common', 'Description of Video 1', 'https://img.youtube.com/vi/9wrBeWc944U/maxresdefault.jpg', 'https://www.youtube.com/embed/9wrBeWc944U', N'Giáo Duc ', 1),
    (N'Phá đảo ASM Java 4 - Phần 2.1: Code lớp DAO, Service và trang index', 'Description of Video 1', 'https://img.youtube.com/vi/mTkHbyQKT5w/maxresdefault.jpg', 'https://www.youtube.com/embed/mTkHbyQKT5w', N'Giáo Duc ', 1),
    (N'Phá đảo ASM Java 4 - Phần 2.2: Code đăng ký, đăng nhập, đăng xuất', 'Description of Video 1', 'https://img.youtube.com/vi/fBjD66UtNZk/maxresdefault.jpg', 'https://www.youtube.com/embed/fBjD66UtNZk', N'Giáo Duc ', 1),
    (N'Phá đảo ASM Java 4 - Phần 2.3: Hiển thị chi tiết video, xử lý button LIKE', 'Description of Video 1', 'https://img.youtube.com/vi/dKls6leQTh4/maxresdefault.jpg', 'https://www.youtube.com/embed/dKls6leQTh4', N'Giáo Duc ', 1),
    (N'Phá đảo ASM Java 4 - Phần 2.4: Tạo trang favorites, history, chức năng gửi email và change password', 'Description of Video 1', 'https://img.youtube.com/vi/eiW18ygZB2Q/maxresdefault.jpg', 'https://www.youtube.com/embed/eiW18ygZB2Q', N'Giáo Duc ', 1),
    (N'Phá đảo ASM Java 4 - Phần 2.5: Chức năng phân trang video', 'Description of Video 1', 'https://img.youtube.com/vi/Rc1mco2fLxI/maxresdefault.jpg', 'https://www.youtube.com/embed/Rc1mco2fLxI', N'Giáo Duc ', 1),
    (N'Phá đảo ASM Java 4 - Phần 3.1: Giao diện admin & thống kê lượt like theo video', 'Description of Video 1', 'https://img.youtube.com/vi/2igJmY93of0/maxresdefault.jpg', 'https://www.youtube.com/embed/2igJmY93of0', N'Giáo Duc ', 1),
    (N'Phá đảo ASM Java 4 - Phần 3.2: Lọc người dùng thích video với stored và ajax reload DataTable', 'Description of Video 1', 'https://img.youtube.com/vi/U3Dj1jK8zGI/maxresdefault.jpg', 'https://www.youtube.com/embed/U3Dj1jK8zGI', N'Giáo Duc ', 1),
    (N'Phá đảo ASM Java 4 - Phần cuối: Dùng Ajax thêm/xóa/sửa video', 'Description of Video 1', 'https://img.youtube.com/vi/1NHnK4ghw2A/maxresdefault.jpg', 'https://www.youtube.com/embed/1NHnK4ghw2A', N'Giáo Duc ', 1);

