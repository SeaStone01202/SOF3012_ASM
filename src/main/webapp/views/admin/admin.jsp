<%--
  Created by IntelliJ IDEA.
  User: haith
  Date: 11/13/2024
  Time: 8:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/9e21e74715.js" crossorigin="anonymous"></script>
    <style>
        body {
            background-color: #f8f9fa;
        }

        .nav-pills .nav-link.active {
            background-color: #007bff;
        }

        .table th,
        .table td {
            vertical-align: middle;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <!-- Vertical Sidebar -->
        <div class="col-md-2 bg-dark text-light vh-100 p-3 d-flex flex-column">
            <h5><span><i class="fa-solid fa-bars"></i></span> Admin Panel</h5>
            <h6><span><i class="fa-solid fa-user"></i></span> Xin chào: <span class="text-warning">Admin</span></h6>
            <nav class="nav flex-column nav-pills">
                <a class="nav-link active" data-bs-toggle="pill" href="#tab1"><span><i
                        class="fa-solid fa-table-columns"></i></span> Dashboard</a>
                <a class="nav-link" data-bs-toggle="pill" href="#tab2"><span><i
                        class="fa-solid fa-video"></i></span> Videos</a>
                <a class="nav-link" data-bs-toggle="pill" href="#tab3"><span><i
                        class="fa-solid fa-comments"></i></span> Comments</a>
                <a class="nav-link" data-bs-toggle="pill" href="#tab4"><span><i
                        class="fa-solid fa-users"></i></span> Users</a>
            </nav>
            <button class="btn btn-primary mt-auto"><span><i class="fa-solid fa-right-from-bracket"></i></span> Đăng
                xuất
            </button>
        </div>

        <!-- Content Area -->
        <div class="col-md-10 p-4 bg-dark bg-opacity-10">
            <div class="tab-content">
                <!-- Tab 1 Content -->
                <div class="tab-pane fade show active" id="tab1">
                    <h3>Dashboard</h3>
                    <p>Dashboard Overview Content...</p>
                </div>

                <!-- Tab 2 Content: Videos -->
                <div class="tab-pane fade" id="tab2">
                    <h3>Manage Videos</h3>

                    <!-- Form Thêm video mới -->
                    <form class="mb-4">
                        <div class="row">
                            <div class="col-md-4 mb-3 md-4">
                                <label>Thumbnails</label> <br>
                                <label for="mockupID">
                                    <i id="blog-label-image" class="fa-solid fa-plus"></i>
                                    <img id="imagePreview" style="display: none; max-width:25%; height: auto;"
                                         alt="Image Preview">
                                </label>
                                <input type="file" name="mockupID" class="form-control" id="mockupID"
                                       placeholder="Choose File Thumbnails" accept="image/*" style="display: none">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="videoTitle" class="form-label">Video Title</label>
                                <input type="text" class="form-control" id="videoTitle"
                                       placeholder="Enter video title">
                                <label for="videoUrl" class="form-label">Video URL</label>
                                <input type="text" class="form-control" id="videoUrl" placeholder="Enter video URL">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions"
                                           id="inlineRadio1" value="option1">
                                    <label class="form-check-label" for="inlineRadio1">Active</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions"
                                           id="inlineRadio2" value="option2">
                                    <label class="form-check-label" for="inlineRadio2">Inative</label>
                                </div>
                            </div>
                            <div class="col-md-10 mb-3">
                                <label for="videoDescription" class="form-label">Description</label>
                                <textarea class="form-control" id="videoDescription" rows="3"
                                          placeholder="Enter video description"></textarea>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Create</button>
                        <button type="submit" class="btn btn-success">Update</button>
                        <button type="submit" class="btn btn-danger">Delete</button>
                        <button type="submit" class="btn btn-warning">Reset</button>
                    </form>

                    <!-- Danh sách video -->
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Views</th>
                            <th>Like</th>
                            <th>Dislike</th>
                            <th>Shared</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <!-- Dữ liệu sẽ được đổ từ server -->
                        <tr>
                            <td>1</td>
                            <td>Funny Clip</td>
                            <td>A very funny clip!</td>
                            <td>1234</td>
                            <td>100</td>
                            <td>200</td>
                            <td>20</td>
                            <td>
                                <button class="btn btn-warning btn-sm">Edit</button>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Comedy Show</td>
                            <td>Live comedy show clip.</td>
                            <td>5678</td>
                            <td>100</td>
                            <td>200</td>
                            <td>20</td>
                            <td>
                                <button class="btn btn-warning btn-sm">Edit</button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <!-- Tab 3 Content: Comments -->
                <div class="tab-pane fade" id="tab3">
                    <h3>Manage Comments</h3>

                    <!-- Form Thêm video mới -->
                    <form class="mb-4">
                        <div class="row">
                            <div class="col-md-4 mb-3 md-4">
                                <label>Thumbnails</label> <br>
                                <label for="mockupID">
                                    <i id="blog-label-image" class="fa-solid fa-plus"></i>
                                    <img id="imagePreview" style="display: none; max-width:25%; height: auto;"
                                         alt="Image Preview">
                                </label>
                                <input type="file" name="mockupID" class="form-control" id="mockupID"
                                       placeholder="Choose File Thumbnails" accept="image/*" style="display: none">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="videoTitle" class="form-label">Video Title</label>
                                <input type="text" class="form-control" id="videoTitle"
                                       placeholder="Enter video title">
                                <label for="videoUrl" class="form-label">Video URL</label>
                                <input type="text" class="form-control" id="videoUrl" placeholder="Enter video URL">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions"
                                           id="inlineRadio1" value="option1">
                                    <label class="form-check-label" for="inlineRadio1">Active</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions"
                                           id="inlineRadio2" value="option2">
                                    <label class="form-check-label" for="inlineRadio2">Inative</label>
                                </div>
                            </div>
                            <div class="col-md-10 mb-3">
                                <label for="videoDescription" class="form-label">Description</label>
                                <textarea class="form-control" id="videoDescription" rows="3"
                                          placeholder="Enter video description"></textarea>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Create</button>
                        <button type="submit" class="btn btn-success">Update</button>
                        <button type="submit" class="btn btn-danger">Delete</button>
                        <button type="submit" class="btn btn-warning">Reset</button>
                    </form>

                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>User</th>
                            <th>Comment</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>10</td>
                            <td>john_doe</td>
                            <td>Great video!</td>
                            <td>
                                <button class="btn btn-danger btn-sm">Delete</button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <!-- Tab 4 Content: Users -->
                <div class="tab-pane fade" id="tab4">
                    <h3>User Management</h3>

                    <!-- Form Thêm video mới -->
                    <form class="mb-4">
                        <div class="row">
                            <div class="col-md-4 mb-3 ">
                                <label for="userUsername" class="form-label">Username</label>
                                <input type="text" class="form-control" name="userUsername" id="userUsername">
                                <label for="userFullname" class="form-label">Fullname</label>
                                <input type="text" class="form-control" name="userFullname" id="userFullname">
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="userPassword" class="form-label">Password</label>
                                <input type="text" class="form-control" name="userPassword" id="userPassword">
                                <label for="userEmail" class="form-label">Email</label>
                                <input type="text" class="form-control" name="userEmail" id="userEmail">
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Create</button>
                        <button type="submit" class="btn btn-success">Update</button>
                        <button type="submit" class="btn btn-danger">Delete</button>
                        <button type="submit" class="btn btn-warning">Reset</button>
                    </form>

                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Username</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>101</td>
                            <td>jane_doe</td>
                            <td>jane@example.com</td>
                            <td>User</td>
                            <td>
                                <button class="btn btn-warning btn-sm">Edit</button>
                                <button class="btn btn-danger btn-sm">Delete</button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function showImageMockup() {
        document.getElementById('mockupID').addEventListener('change', function (event) {
            const file = event.target.files[0];
            if (file && file.type.match('image.*')) {
                const reader = new FileReader();
                reader.onload = function (e) {
                    const imagePreview = document.getElementById('imagePreview');
                    imagePreview.src = e.target.result;
                    imagePreview.style.display = 'block';
                };
                reader.readAsDataURL(file);
            }
        });
    }

    showImageMockup();
</script>
</body>
</html>
