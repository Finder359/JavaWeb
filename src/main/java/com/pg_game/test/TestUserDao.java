package com.pg_game.test;

import com.pg_game.dao.UserDao;
import com.pg_game.dao.impl.UserDaoImpl;

public class TestUserDao {

    public static void main(String[] args) {
        UserDaoImpl userDao = new UserDaoImpl();
       boolean a= userDao.login("admin","123456");
        System.out.println(a);
    }
}
