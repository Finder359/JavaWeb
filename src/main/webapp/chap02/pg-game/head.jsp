<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--显示用户名和等级,以及退出登录--%>

<%

    String username = (String) session.getAttribute("username");
    String level = (String) session.getAttribute("level");
%>

<div style="display:flex;justify-content:space-between;align-items:center;">
    <p>欢迎 <%= username %> ，用户等级：<%= level %> </p>
    <div><a href="logout.jsp">退出登录</a></div>
</div>

</body>
</html>
