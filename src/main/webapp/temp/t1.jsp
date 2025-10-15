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
        .remember {
            font-size: 13px;
            color: #555;
            margin-top: 10px;
        }
    </style>
</head>
<body>

<%
    // 从 Cookie 中读取用户名
    Cookie[] cookies = request.getCookies();
    String username = "";
    boolean remember = false;

    if (cookies != null) {
        for (Cookie c : cookies) {
            if ("username".equals(c.getName())) {
                username = c.getValue();
                remember = true; // 说明上次勾选了“记住我”
            }
        }
    }
%>

<div class="login-box">
    <h2>用户登录</h2>
    <form method="post" action="doLogin.jsp">
        <input type="text" name="username" value="<%=username%>" placeholder="请输入用户名" required>
        <br>
        <input type="password" name="password" placeholder="请输入密码" required>
        <br>

        <label class="remember">
            <input type="checkbox" name="remember" value="yes" <%=remember ? "checked" : ""%> >
            记住我
        </label>
        <br>

        <input type="submit" value="登录">
        <input type="button" value="注册" onclick="window.location.href='register.jsp'">
    </form>
</div>

</body>
</html>
