<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/chap02/pg-game/checkLogin.jsp"%>
<html>
<head>
    <title>游戏结果</title>
    <style>
        body { text-align: center; font-family: sans-serif; margin-top: 50px; }
        .win { color: green; font-weight: bold; }
        .lose { color: red; font-weight: bold; }
        button { padding: 10px 20px; border-radius: 8px; cursor: pointer; margin-top: 10px; }
    </style>
</head>
<body>
<h1>🎲 开奖结果：<%= request.getAttribute("resultColor") %></h1>

<% boolean win = (boolean) request.getAttribute("win"); %>
<p class="<%= win ? "win" : "lose" %>">
    你<%= win ? "赢了" : "输了" %>！
    （下注金额：<%= request.getAttribute("betAmount") %>）
</p>

<p>剩余筹码：<%= session.getAttribute("chips") %></p>

<form action="/chap02/pg-game/game/Roulette.jsp">
    <button type="submit">再来一局</button>

    <button type="button" onclick="window.location.href='<%= request.getContextPath() %>/chap02/pg-game/welcome.jsp'">
        返回首页
    </button>

</form>
</body>
</html>
