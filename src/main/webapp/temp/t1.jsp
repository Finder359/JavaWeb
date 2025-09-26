<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<html>
<head>
    <title>阶乘计算</title>
</head>
<body>

<form method="get">
    请输入一个整数：<input type="text" name="num">
    <input type="submit" value="计算阶乘">
</form>

<%
    String numStr = request.getParameter("num"); // 获取页面输入的值
    if (numStr != null && !numStr.isEmpty()) {
        // 这里不写 try/catch，如果不是整数，JSP 会自动抛异常，交给 error.jsp 处理
        int n = Integer.parseInt(numStr);

        if (n < 0) {
            // 主动抛出异常，也能触发 error.jsp
            throw new RuntimeException("请输入非负整数");
        }

        long result = 1;
        for (int i = 1; i <= n; i++) {
            result *= i;
        }
%>
<h2><%= n %> 的阶乘是：<%= result %></h2>
<%
    }
%>

</body>
</html>
