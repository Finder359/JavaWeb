
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>math</title>
</head>
<body>

<form method="get">
    请输入一个整数：<input type="text" name="num">
    <input type="submit" value="计算阶乘">
</form>
<%
    String numStr = request.getParameter("num"); // 获取页面输入的值
    if(numStr != null && !numStr.isEmpty()){
        int n = Integer.parseInt(numStr);  // 转换成整数
    long result = 1;
    for(int i = 1; i <= n; i++){
        result *= i;
    }

//    out.println(result);
%>

<h2><%= n %> 的阶乘是：<%= result %></h2>

<%
    }
%>
</body>
</html>
