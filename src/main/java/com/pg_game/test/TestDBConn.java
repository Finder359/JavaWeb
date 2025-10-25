package com.pg_game.test;

import com.pg_game.utils.DBUtil;

import java.sql.Connection;

public class TestDBConn {
    public static void main(String[] args) {
        Connection conn = DBUtil.getConn();
        System.out.println(conn);
    }
}
