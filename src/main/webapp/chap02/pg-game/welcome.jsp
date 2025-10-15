<%@ include file="checkLogin.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>welcome</title>
</head>
<body>

<%

    String username = (String) session.getAttribute("username");
    String level = (String) session.getAttribute("level");
%>

<div style="display:flex;justify-content:space-between;align-items:center;">
<p>欢迎 <%= username %> ，用户等级：<%= level %> </p>
<div><a href="logout.jsp">退出登录</a></div>
</div>
<p><a href="dashboard.jsp">点击</a>进入用户仪表盘 </p>
<div>
    <h3>线上娱乐项目推荐：</h3>
    <ul>
        <li><a href="Baccarat.jsp">百家乐</a> </li>
        <li>德州扑克</li>
        <li>牛牛</li>
        <li>轮盘赌</li>
        <li>麻将</li>
        <li>体育</li>
    </ul>

</div>

</body>
</html>
