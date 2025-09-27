<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body>
<h2>用户注册</h2>
<form method="post" action="doRegister.jsp" accept-charset="UTF-8">
    用户名：<input type="text" name="username"><br><br>
    密码：<input type="password" name="password"><br><br>
    确认密码：<input type="password" name="confirmPwd"><br><br>

    性别：
    <input type="radio" name="gender" value="男">男
    <input type="radio" name="gender" value="女">女
    <br><br>

    爱好：
    <input type="checkbox" name="hobby" value="旅游">旅游
    <input type="checkbox" name="hobby" value="唱歌">唱歌
    <input type="checkbox" name="hobby" value="美食">美食
    <input type="checkbox" name="hobby" value="游戏">游戏
    <br><br>

    政治面貌：
    <select name="politics">
        <option value="群众">群众</option>
        <option value="共青团员">共青团员</option>
        <option value="中共党员">中共党员</option>
    </select>
    <br><br>

    简介：<br>
    <textarea name="intro" rows="5" cols="30"></textarea>
    <br><br>

    <input type="submit" value="提交">
    <input type="reset" value="取消">
</form>
</body>
</html>
