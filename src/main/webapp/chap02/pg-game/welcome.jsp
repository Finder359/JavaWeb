<%--
  Created by IntelliJ IDEA.
  User: xh
  Date: 2025/9/27
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>welcome</title>
</head>
<body>
<p>欢迎 <%= session.getAttribute("username") %> ，用户等级：<%= session.getAttribute("level") %> </p>

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
