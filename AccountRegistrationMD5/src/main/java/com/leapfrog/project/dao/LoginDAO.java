/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.project.dao;

import com.leapfrog.project.entity.User;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author HYOJU
 */
public interface LoginDAO {

    List<User> getAll() throws SQLException, ClassNotFoundException;
    User login(String username, String finalPassword) throws SQLException, ClassNotFoundException, NullPointerException;

}
