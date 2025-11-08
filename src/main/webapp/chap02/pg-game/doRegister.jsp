<%@ page import="com.pg_game.entity.User" %>
<%@ page import="com.pg_game.dao.impl.UserDaoImpl" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册结果</title>
</head>
<body>
<%
    //在get前设置编码
    request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");
    // 获取表单参数
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String confirmPwd = request.getParameter("confirmPwd");
    String gender = request.getParameter("gender");
    String[] hobbies = request.getParameterValues("hobby"); // 多选框要用 getParameterValues
    String politics = request.getParameter("politics");
    String intro = request.getParameter("intro");

//把hobby都放到hobbyList里
    String hobbyList = "";

    if (hobbies != null) {
        for (String h : hobbies) {
            hobbyList += h + " ";
        }
    } else {
        hobbyList = "无";
    }


    // 简单逻辑：检查两次密码是否一致
    if (password == null || !password.equals(confirmPwd)) {
%>
<h3 style="color:red;">两次密码不一致，请返回重新输入！</h3>
<a href="register.jsp">返回注册页面</a>
<%
} else {// 调用后端添加用户逻辑
    User user = new User();
    user.setUsername(username);
    user.setPassword(password);

    UserDaoImpl userDao = new UserDaoImpl();
    int result = userDao.insert(user);

    if (result > 0) {

%>
<h2>注册成功！以下是您的信息：</h2>
<p>用户名：<%= username %></p>
<p>性别：<%= gender %></p>
<p>爱好：<%= hobbyList %></p>
<p>政治面貌：<%= politics %></p>
<p>简介：<%= intro %></p>
<%
    }else {
%>
<h3 style="color:red;">注册失败，请稍后重试！</h3>
<a href="register.jsp">返回注册页面</a>
<%
        }
    }
%>
</body>
</html>
