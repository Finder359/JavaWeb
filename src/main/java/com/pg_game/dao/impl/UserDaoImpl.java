package com.pg_game.dao.impl;

import com.pg_game.dao.UserDao;
import com.pg_game.entity.User;
import com.pg_game.utils.DBUtil;

import java.sql.*;
import java.util.ArrayList;

//用于实现对数据库的操作逻辑（用户表）
public class UserDaoImpl implements UserDao {

    Connection conn = null;
    ResultSet rs = null;
    PreparedStatement ps=null;
//查询admin_info表中的所有记录
    @Override
    public ArrayList<User> queryAll() {

        ArrayList<User> users = new ArrayList<>();
        conn = DBUtil.getConn();

        String sql="select * from admin_info";
        try {
             ps=conn.prepareStatement(sql);
             rs=ps.executeQuery();

            //遍历结果集
            while (rs.next()) {
                User user=new User();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getNString("name"));
                user.setPassword(rs.getNString("pwd"));
                users.add(user);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);

        }finally {
            DBUtil.close(rs,ps,conn);
            }
        return users;
    }

    @Override
    public int delete(int id) {
        int n=0;
        conn = DBUtil.getConn();
        String sql="delete from admin_info where id=?";
        try {
            ps=conn.prepareStatement(sql);
            ps.setInt(1,id);
            n=ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            DBUtil.close(ps,conn);
        }

    return n;

    }

    @Override
    public int insert(User user) {
        int n=0;
        conn = DBUtil.getConn();

        try {
            String sql="insert into admin_info(name,pwd) values(?,?)";
            ps=conn.prepareStatement(sql);
            ps.setString(1,user.getUsername());
            ps.setString(2,user.getPassword());
            n=ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            DBUtil.close(ps,conn);
        }

        return n;

    }

    @Override
    public int update(User user) {
        conn = DBUtil.getConn();
        String sql = "UPDATE admin_info SET name = ?, pwd = ? WHERE id = ?";
        int n=0;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setInt(3, user.getId());  // 根据 id 修改对应用户
            n = ps.executeUpdate();


        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            DBUtil.close(ps, conn);
        }

        return n;
    }


    @Override
    public boolean login(String username, String password) {
        conn=DBUtil.getConn();
        boolean flag=false;
        String sql = "SELECT * FROM admin_info WHERE name=? AND pwd=?";
        try (Connection conn = DBUtil.getConn();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, username);
            ps.setString(2, password);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    flag = true;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
}
