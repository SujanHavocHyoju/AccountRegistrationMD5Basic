/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.project.controller;

import com.leapfrog.project.dao.ForgotPasswordDAO;
import com.leapfrog.project.dao.impl.ForgotPasswordDAOImpl;
import com.leapfrog.project.entity.User;
import com.leapfrog.project.system.Controller;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HYOJU
 */
@WebServlet(name="forgotpasswordpage",urlPatterns = {"/forgot/*"})
public class ForgotPasswordPageController extends Controller{
    
private ForgotPasswordDAO forgotPasswordDAO = new ForgotPasswordDAOImpl();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/WEB-INF/views/forgot/forgot.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String hashcode = request.getParameter("hashcode");
        try {
            User u = forgotPasswordDAO.newPassword(hashcode);
            
            if (u != null) {
              response.sendRedirect(request.getContextPath() +"/reset/*");
            }else
            {
            response.sendRedirect(request.getContextPath() + "/?wrong-hashkey");
            }
        } catch (SQLException | ClassNotFoundException ex) {
            System.out.println(ex.getLocalizedMessage());
        }

    }
}
