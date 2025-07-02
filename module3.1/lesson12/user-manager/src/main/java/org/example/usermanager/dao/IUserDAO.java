package org.example.usermanager.service;

import org.example.usermanager.model.User;

import java.util.List;

public interface IUserDAO {
    public void insertUser(User user) throws Exception;
    public User selectUser(int id) ;
    List<User> selectAllUsers();
    boolean deleteUser(int id) throws Exception;
}
