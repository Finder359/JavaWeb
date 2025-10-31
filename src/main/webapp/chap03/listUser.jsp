<%@ page import="com.pg_game.dao.impl.UserDaoImpl" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.pg_game.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>显示所有用户</title>
</head>
<body>

<h1>所有用户</h1>
<table>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>password</th>
    </tr>
<%
    UserDaoImpl userDao = new UserDaoImpl();
    ArrayList<User> users = userDao.queryAll();
    User user = null;
    for (int i = 0; i < users.size(); i++) {
        user = users.get(i);

%>
    <tr>
        <td><%=user.getId()%></td>
        <td><%= user.getUsername() %></td>
        <td><%= user.getPassword() %></td>
    </tr>
<%
    }
%>
</table>
</body>
</html>
