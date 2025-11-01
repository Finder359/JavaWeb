package com.pg_game.test;

import com.pg_game.dao.UserDao;
import com.pg_game.dao.impl.UserDaoImpl;
import com.pg_game.entity.User;
import com.pg_game.utils.DBUtil;

public class TestUserDao {

    public static void main(String[] args) {
//        UserDaoImpl userDao = new UserDaoImpl();
//       boolean a= userDao.login("admin","123456");
//        System.out.println(a);
        TestUpdate();
    }

    public static void TestInsert(){
    UserDaoImpl userDao = new UserDaoImpl();
    User user=new User();
    user.setUsername("tom");
    user.setPassword("123456");
    int n=userDao.insert(user);
    System.out.println(n);
    }

    public static void TestQueryAll(){
        UserDaoImpl userDao = new UserDaoImpl();
        userDao.queryAll();
    }

    public static void TestDelete(){
        UserDaoImpl userDao = new UserDaoImpl();
        int id=14;
        int n=userDao.delete(id);
        System.out.println(n);
    }

    public static void TestUpdate(){
        User user = new User();
        user.setId(13);
        user.setUsername("新用户名");
        user.setPassword("66666");

        UserDaoImpl userDao = new UserDaoImpl();
        int n=userDao.update(user);
        System.out.println(n);
    }

}
