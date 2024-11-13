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