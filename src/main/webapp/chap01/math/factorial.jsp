<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.net.URLEncoder" %>
<html>
<head>
    <title>阶乘计算</title>
</head>
<body>

<form method="get" >
    请输入一个整数：<input type="text" name="num">
    <input type="submit" value="计算阶乘">
</form>

<%
    String numStr = request.getParameter("num"); // 获取页面输入的值
    if (numStr != null && !numStr.isEmpty()) {
        try {
            int n = Integer.parseInt(numStr); // 尝试转换成整数
            if (n < 0) {
                // 阶乘只适用于非负整数
                String msg = URLEncoder.encode("请输入非负整数", "UTF-8");
                response.sendRedirect("error.jsp?msg=" + msg);
            } else {
                long result = 1;
                for (int i = 1; i <= n; i++) {
                    result *= i;
                }
%>
<h2><%= n %> 的阶乘是：<%= result %></h2>
<%
            }
        } catch (NumberFormatException e) {
            // 输入不是数字，跳转到错误页面
                String msg = URLEncoder.encode("输入数据不是整数数字，请重新输入", "UTF-8");
                response.sendRedirect("error.jsp?msg=" + msg);
        }
    }
%>

</body>
</html>
