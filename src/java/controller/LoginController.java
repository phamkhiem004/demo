///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
// */
//package controller;
//
//import dal.AccountDAO;
//import java.io.IOException;
//import java.io.PrintWriter;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//import java.util.List;
//import model.Account;
//
///**
// *
// * @author ADMIN
// */
//@WebServlet(name = "LoginController", urlPatterns = {"/login"})
//public class LoginController extends HttpServlet {
//
//    /**
//     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
//     * methods.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//          
//    }
//
//    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
//    /**
//     * Handles the HTTP <code>GET</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//         request.getRequestDispatcher("login.jsp").forward(request, response);
//    }
//
//    /**
//     * Handles the HTTP <code>POST</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        AccountDAO dao = new AccountDAO();
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//        HttpSession session = request.getSession();
//        Account acc = new Account();
//        acc = dao.getAccountByUsernameAndPassword(username, password);
//        if (acc != null) {
//            if (acc.getStatus()== 1) {
//               
//                session.setAttribute("account", acc);
//                 List<Product> cart = (List<Product>) session.getAttribute("cart");
//            if (cart != null) {
//                // Set cart items in request attribute
//                request.setAttribute("cart", cart);
//            }
//                 response.sendRedirect("home");
//            } else {
//                request.setAttribute("message", "User is blocked");
//                request.getRequestDispatcher("login.jsp").forward(request, response);
//
//            }
//
//        } else {
//            request.setAttribute("message", "User or Password incorrect!");
//            request.getRequestDispatcher("login.jsp").forward(request, response);
//        }
//    }
//
//    /**
//     * Returns a short description of the servlet.
//     *
//     * @return a String containing servlet description
//     */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//
//}
