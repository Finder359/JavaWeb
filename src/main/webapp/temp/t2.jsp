<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <title>表单提交结果</title>
</head>
<body>
<h2>提交结果</h2>
<%
    String name = request.getParameter("name");
    String age = request.getParameter("age");
%>
姓名: <%= name %><br>
年龄: <%= age %><br>
</body>
</html>
