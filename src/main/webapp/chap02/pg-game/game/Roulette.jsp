<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/chap02/pg-game/checkLogin.jsp"%>
<html>
<head>
    <title>轮盘赌</title>
    <style>
        body { font-family: sans-serif; text-align: center; margin-top: 50px; }
        .card { display: inline-block; border: 1px solid #ccc; padding: 20px; border-radius: 12px; box-shadow: 0 0 10px #ccc; }
        button { padding: 10px 20px; border-radius: 8px; cursor: pointer; margin-top: 10px; }
    </style>
</head>
<body>
<%
    String username = (String) session.getAttribute("username");
    String level = (String) session.getAttribute("level");
%>

<div class="card">
    <h1>🎰 轮盘赌</h1>
    <p>欢迎 <%= username %> ，用户等级：<%= level %> </p>
    <form action="<%= request.getContextPath() %>/RouletteServlet" method="post">

    <p>当前筹码：<%= session.getAttribute("chips") == null ? 1000 : session.getAttribute("chips") %></p>

        <p>下注金额：<input type="number" name="betAmount" min="1" required></p>

        <p>选择颜色：
            <select name="color">
                <option value="red">红色</option>
                <option value="black">黑色</option>
            </select>
        </p>

        <button type="submit">下注</button>

        <button type="button" onclick="window.location.href='<%= request.getContextPath() %>/chap02/pg-game/welcome.jsp'">
            返回首页
        </button>

    </form>
</div>
</body>
</html>
