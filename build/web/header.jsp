<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <style>
        header {
            background-color: #d32f2f;
            padding: 15px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .topbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .logo {
            font-size: 24px;
            font-weight: bold;
        }
        .right-links a {
            color: #fff;
            text-decoration: none;
            margin-left: 10px;
        }
        nav ul {
            list-style: none;
            display: flex;
            padding: 10px 0;
        }
        nav ul li {
            margin-right: 20px;
        }
        nav ul li a {
            text-decoration: none;
            color: #fff;
            font-weight: bold;
        }
    </style>

    <header>
        <div class="topbar">
            <div class="logo">🎬 Cinema</div>
            <div class="right-links">
                <a href="login.jsp">Đăng nhập</a> | 
                <a href="register.jsp">Đăng ký</a>
            </div>
        </div>
        <nav>
            <ul>
                <li><a href="home.jsp">Trang Chủ</a></li>
                <li><a href="movies.jsp">Phim Đang Chiếu</a></li>
                <li><a href="upcomingmovies.jsp">Phim Sắp Chiếu</a></li>
                <li><a href="events.jsp">Khuyến Mãi</a></li>
                <li><a href="schedule.jsp">Lịch Chiếu</a></li>
                <li><a href="contact.jsp">Liên Hệ</a></li>
            </ul>
        </nav>
    </header>


