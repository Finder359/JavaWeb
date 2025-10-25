<%--
  Created by IntelliJ IDEA.
  User: xh
  Date: 2025/9/27
  Time: 10:14
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <style>
        body {
            font-family: "微软雅黑", Arial, sans-serif;
            background: linear-gradient(135deg, #74ebd5 0%, #9face6 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-box {
            background: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            width: 350px;
            text-align: center;
        }
        .login-box h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .login-box input[type="text"],
        .login-box input[type="password"] {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 8px;
            outline: none;
            font-size: 14px;
        }
        .login-box input[type="text"]:focus,
        .login-box input[type="password"]:focus {
            border-color: #74ebd5;
            box-shadow: 0 0 5px rgba(116, 235, 213, 0.6);
        }
        .login-box input[type="submit"],
        .login-box input[type="button"] {
            width: 45%;
            padding: 10px;
            margin: 10px 5px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 15px;
            transition: 0.3s;
        }
        .login-box input[type="submit"] {
            background: #74ebd5;
            color: #333;
        }
        .login-box input[type="button"] {
            background: #f5f5f5;
            color: #333;
        }
        .login-box input[type="submit"]:hover {
            background: #5fd1c2;
        }
        .login-box input[type="button"]:hover {
            background: #ddd;
        }
    </style>
</head>
<body>
<%
    // 检查是否已有登录状态（session）
    if (session.getAttribute("username") != null) {
        response.sendRedirect("welcome.jsp");
        return;
    }

    // 检查是否有自动登录 cookie
    Cookie[] cookies = request.getCookies();
    String username = "";
    String token = "";
    if (cookies != null) {
        for (Cookie c : cookies) {
            if ("autoLoginUser".equals(c.getName())) username = c.getValue();
            if ("autoLoginToken".equals(c.getName())) token = c.getValue();
        }
    }

    // 如果token存在，可以在这里验证是否有效（简单起见略）
    if (!"".equals(token)) {
        session.setAttribute("username", username);
        session.setAttribute("level", "vip");
        response.sendRedirect("welcome.jsp");
        return;
    }

//    boolean t=session.isNew();
//    System.out.println(t);
//    session.setAttribute("t",t);
%>


<div class="login-box">
    <h2>用户登录</h2>
    <form method="post" action="doLogin.jsp">
        <input type="text" name="username" value="<%=username%>" placeholder="请输入用户名" required>
        <br>
        <input type="password" name="password" placeholder="请输入密码" required>
        <br>
        <label><input type="checkbox" name="autoLogin" value="true"> 1天内自动登录</label><br>
        <input type="submit" value="登录">
        <input type="button" value="注册" onclick="window.location.href='register.jsp'">

    </form>
</div>

</body>
</html>
