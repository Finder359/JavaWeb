<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    String dbUrl = "jdbc:mysql://localhost:3306/userdb";
    String dbUser = "root";
    String dbPass = "123456";

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL 8+
        conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);

        String sql = "SELECT level FROM users WHERE username=? AND password=?";
        ps = conn.prepareStatement(sql);
        ps.setString(1, username);
        ps.setString(2, password);  // 如果密码是哈希值，这里要用哈希后的值
        rs = ps.executeQuery();

        if (rs.next()) {
            String level = rs.getString("level");
            session.setAttribute("username", username);
            session.setAttribute("level", level);
            out.println("登录成功");
        } else {
            out.println("<script>alert('用户名或密码错误');location.href='t1.jsp';</script>");
        }
    } catch(Exception e) {
        e.printStackTrace();
    } finally {
        if(rs!=null) rs.close();
        if(ps!=null) ps.close();
        if(conn!=null) conn.close();
    }
%>



</body>
</html>
