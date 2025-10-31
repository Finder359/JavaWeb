package com.pg_game.dao;

import com.pg_game.entity.User;

import java.util.ArrayList;

//用于访问数据库的用户表
public interface UserDao {
    ArrayList queryAll();
    int delete(int id);

    int insert(User user);
    void update();

    boolean login(String username,String password);

}
