package com.pg_game.dao;
//用于访问数据库的用户表
public interface UserDao {
    void queryAll();
    int delete(int id);

    void insert();
    void update();

    boolean login(String username,String password);

}
