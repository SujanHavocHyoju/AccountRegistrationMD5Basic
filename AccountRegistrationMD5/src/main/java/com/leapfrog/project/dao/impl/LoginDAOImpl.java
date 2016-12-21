/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.project.dao.impl;

import com.leapfrog.project.dao.LoginDAO;
import com.leapfrog.project.dbutil.DbConnection;
import com.leapfrog.project.entity.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HYOJU
 */
public class LoginDAOImpl implements LoginDAO{
    
    private DbConnection conn = new DbConnection();
    private List<User> userList = new ArrayList<>();

    @Override
    public List<User> getAll() throws SQLException, ClassNotFoundException {
        String sql = "SELECT * FROM tbl_userinfo";
        conn.open();
        PreparedStatement stmnt = conn.initStatement(sql);
        ResultSet rs = conn.executeQuery();
        while (rs.next()) {
            User u = new User();
            u.setId(rs.getInt("user_id"));
            u.setUsername(rs.getString("username"));
            u.setEmail(rs.getString("email"));
            u.setPassword(rs.getString("password"));
            u.setConfirmPassword(rs.getString("confirm_password"));
            u.setHashKey(rs.getString("hashkey"));
            userList.add(u);
        }
        conn.close();
        return userList;
    }

    @Override
    public User login(String username, String finalPassword) throws SQLException, ClassNotFoundException, NullPointerException {
        for (User u : getAll()) {
            if ((u.getUsername().equals(username)) && ((u.getPassword().equals(finalPassword)))) {
                return u;
            }
        }
        return null;
    }

}
