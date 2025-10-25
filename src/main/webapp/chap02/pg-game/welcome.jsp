<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ include file="checkLogin.jsp" %>
<html>
<head>
    <title>welcome</title>
</head>
<body>

<%
//获取变量
    String username = (String) session.getAttribute("username");
    String level = (String) session.getAttribute("level");
%>
<%
    //若用户session中有visited则不是第一次访问
    Integer count = (Integer)application.getAttribute("count");
    if (count == null) {
        count = 0;
    }

// 从 session 判断这个用户是不是第一次访问
    Boolean visited = (Boolean)session.getAttribute("visited");

    if (visited == null || !visited) {
        // 第一次访问网站，计数 +1
        count++;
        application.setAttribute("count", count);

        // 记录该用户已访问
        session.setAttribute("visited", true);
    }
%>
<%--头部样式--%>
    <jsp:include page="head.jsp"></jsp:include><br>

<p><a href="dashboard.jsp">点击</a>进入用户仪表盘 </p>
当前网站访问量：<%= count %>
<div>
    <h3>线上娱乐项目推荐：</h3>
    <ul>
        <li><a href="game/Baccarat.jsp">百家乐</a> </li>
        <li>德州扑克</li>
        <li>牛牛</li>
        <li><a href="game/Roulette.jsp">轮盘赌</a></li>
        <li>麻将</li>
        <li>体育</li>
    </ul>

</div>

</body>
</html>
