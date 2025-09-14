<%--
  Created by IntelliJ IDEA.
  User: xh
  Date: 2025/9/13
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test</title>
</head>
<body>

<form>
    <input type="number" name="num1">
    +
    <input type="number" name="num2">
    <input type="submit" value="=">
</form>
<%
    String n1 = request.getParameter("num1");
    String n2 = request.getParameter("num2");
    if (n1 != null && !n1.isEmpty() && n2 != null && !n2.isEmpty()) {
    double a = Double.parseDouble(n1);  // 转换成 double
    double b = Double.parseDouble(n2);
    double sum = a + b;
%>
<h2><%=a%>+<%=b%>=<%= sum %></h2>

<%
    }
%>
</body>
</html>
