/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.project.dao.impl;

import com.leapfrog.project.dao.RegisterDAO;
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
public class RegisterDAOImpl implements RegisterDAO{
    private DbConnection conn = new DbConnection();
    private List<User> userList = new ArrayList<>();

    @Override
    public int insert(User u) throws SQLException, ClassNotFoundException {
        String sql = "INSERT INTO tbl_userinfo(username,email,password,confirm_password,hashkey)" + "VALUES(?,?,?,?,?)";
        conn.open();
        PreparedStatement stmnt = conn.initStatement(sql);
        stmnt.setString(1, u.getUsername());
        stmnt.setString(2, u.getEmail());
        stmnt.setString(3, u.getPassword());
        stmnt.setString(4, u.getConfirmPassword());
        stmnt.setString(5, u.getHashKey());
        int result = conn.executeUpdate();
        conn.close();
        return result;
    }

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
    public boolean isUsername(String username) throws SQLException, ClassNotFoundException {
        for (User u : getAll()) {
            if (!u.getUsername().equals(username)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean isEmail(String email) throws SQLException, ClassNotFoundException {
        for (User u : getAll()) {
            if (!u.getEmail().equals(email)) {
                return true;
            }
        }
        return false;
    }

}
