<%-- 
    Document   : moviesinfo
    Created on : Feb 9, 2025, 4:10:29 PM
    Author     : Acer Predator
--%>
<%@ page import="model.Movie" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Thông tin phim</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0px;
            }

            .movie-detail {
                background-color: #fff;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                max-width: 800px;
                margin: 0 auto;
                display: flex;
                gap: 20px;
            }

            .movie-poster {
                flex: 1;
            }

            .movie-poster img {
                max-width: 100%;
                height: auto;
                border-radius: 10px;
            }

            .movie-content {
                flex: 2;
            }

            .movie-content h2 {
                color: #333;
                font-size: 24px;
                margin-bottom: 15px;
            }

            .movie-content p {
                color: #555;
                font-size: 16px;
                line-height: 1.6;
                margin: 5px 0;
            }

            .movie-content strong {
                color: #333;
            }

            .btn {
                padding: 10px 15px;
                background-color: #007bff;
                color: white;
                text-decoration: none;
                border-radius: 5px;
                font-size: 0.9em;
                transition: background-color 0.3s ease;
                display: inline-block;
                margin-top: 10px;
            }

            .btn:hover {
                background-color: #0056b3;
            }

            .button-container {
                text-align: center;
                margin-top: 20px;
            }

            .back-link {
                padding: 10px 15px;
                background-color: #007bff;
                color: white;
                text-decoration: none;
                border-radius: 5px;
                font-size: 0.9em;
                transition: background-color 0.3s ease;
            }

            .back-link:hover {
                background-color: #0056b3;
            }

            .error {
                color: red;
                font-weight: bold;
                text-align: center;
                margin: 20px;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <h1>Thông tin phim</h1>
        <%
            // Lấy thông báo lỗi từ request (nếu có)
            String error = (String) request.getAttribute("error");
            if (error != null) {
        %>
        <p class="error"><%= error %></p>
        <%
            } else {
                Movie movie = (Movie) request.getAttribute("movies");
                if (movie != null) {
        %>
        <div class="movie-detail">
            <!-- Phần ảnh phim -->
            <div class="movie-poster">
                <img src="image/<%= movie.getImageURL() %>" alt="<%= movie.getTitle() %>">
                
            </div>

            <!-- Phần thông tin phim -->
            <div class="movie-content">
                <h2><%= movie.getTitle() %></h2>
                <p><strong>Thể loại:</strong> <%= movie.getGenre() %></p>
                <p><strong>Tóm tắt:</strong> <%= movie.getSummary() %></p>
                <p><strong>Thời lượng:</strong> <%= movie.getDuration() %> phút</p>
                <p><strong>Ngày phát hành:</strong> <%= movie.getReleaseDate() %></p>
                <p><strong>Trailer:</strong> <a href="<%= movie.getTrailerURL() %>" target="_blank">Xem trailer</a></p>
                <p><strong>Trạng thái:</strong> <%= movie.getStatus() %></p>
                <a href="booking.jsp?id=<%= movie.getMovieID() %>" class="btn">Đặt vé</a>
            </div>
        </div>
        <%
                } else {
        %>
        <p class="error">Không có thông tin phim.</p>
        <%
                }
            }
        %>
        <div class="button-container">
            <a href="home.jsp" class="back-link">Quay về trang chủ</a>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>
