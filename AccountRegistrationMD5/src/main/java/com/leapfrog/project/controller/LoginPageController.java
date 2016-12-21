/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.project.controller;

import com.leapfrog.project.dao.LoginDAO;
import com.leapfrog.project.dao.impl.LoginDAOImpl;
import com.leapfrog.project.entity.User;
import com.leapfrog.project.system.Controller;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HYOJU
 */
@WebServlet(name="loginpage",urlPatterns = {"/login/*"})
public class LoginPageController extends Controller{
    
private LoginDAO loginDAO = new LoginDAOImpl();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("passOne");
        try {
            MessageDigest m = MessageDigest.getInstance("MD5");
            m.update(password.getBytes(), 0, password.length());
            String finalPassword = (new BigInteger(1, m.digest()).toString(16));

            User u = loginDAO.login(username, finalPassword);
            if(u!=null)
            {
                response.sendRedirect(request.getContentType()+"/success?success");
            }else
            {
                response.sendRedirect(request.getContentType()+"/?error");
            }

        } catch (NoSuchAlgorithmException | SQLException | ClassNotFoundException ex) {
            System.out.println(ex.getLocalizedMessage());
        }

    }
}
