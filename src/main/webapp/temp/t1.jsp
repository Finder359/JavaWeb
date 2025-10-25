<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="login-box">
    <h2>用户登录</h2>
    <form method="post" action="t2.jsp">
        <input type="text" name="username"  placeholder="请输入用户名" required>
        <br>
        <input type="password" name="password" placeholder="请输入密码" required>
        <br>
        <label><input type="checkbox" name="autoLogin" value="true"> 1天内自动登录</label><br>
        <input type="submit" value="登录">


    </form>
</div>

</body>
</html>