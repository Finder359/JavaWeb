package com.pg_game.dao.impl;

import com.pg_game.dao.UserDao;
import com.pg_game.utils.DBUtil;

import java.sql.*;

//用于实现对数据库的操作逻辑（用户表）
public class UserDaoImpl implements UserDao {

    Connection conn = null;
    Statement st = null;
    ResultSet rs = null;
//查询admin_info表中的所有记录
    @Override
    public void queryAll() {
        conn = DBUtil.getConn();
//创建语句容器
        try {
             st=conn.createStatement();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
//执行sql语句
        String sql="select * from admin_info";
        try {
             rs= st.executeQuery(sql);

            System.out.println("id\tname\tpassword");

            //遍历结果集
            while (rs.next()) {
                int id = rs.getInt("id");
                String username = rs.getString("name");
                String password = rs.getString("pwd");

                System.out.println(id+"\t"+username+"\t"+password);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);

        }finally {
            DBUtil.close(rs,st,conn);
            }



    }

    @Override
    public int delete(int id) {
        int n=0;


        conn = DBUtil.getConn();

        try {
            st=conn.createStatement();
            String sql="delete from admin_info where id="+id;
            n=st.executeUpdate(sql);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            DBUtil.close(st,conn);
        }

    return n;

    }

    @Override
    public void insert() {

    }

    @Override
    public void update() {

    }

    @Override
    public boolean login(String username, String password) {
        conn=DBUtil.getConn();
        boolean flag=false;

        String sql = "SELECT * FROM admin_info WHERE name='" + username + "' AND pwd='" + password + "'";

        try {
            st=conn.createStatement();
            rs= st.executeQuery(sql);
            if (rs.next()){
             flag=true;
                }

        } catch (SQLException e) {
            throw new RuntimeException(e);

        }finally {
            DBUtil.close(rs,st,conn);
        }

        return flag;
    }
}
