<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>错误提示</title>
</head>
<body>
<h2 style="color:red;">
    输入数据不是数字，请重新输入！<br>
    <%= exception != null ? exception.getMessage() : "" %>
</h2>

<form action="factorial.jsp">
    <input type="submit" value="重新输入">
</form>
</body>
</html>
