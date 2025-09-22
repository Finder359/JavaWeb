
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>T1</title>
</head>
<body>

<%
    String n1 = request.getParameter("num1");
    String n2 = request.getParameter("num2");
    String result = "";

    if (n1 != null && !n1.isEmpty() && n2 != null && !n2.isEmpty()) {
        try {
            double a = Double.parseDouble(n1);
            double b = Double.parseDouble(n2);
            double sum = a + b;
            result = String.valueOf(sum);
        } catch (NumberFormatException e) {
            result = "输入错误";
        }
    }
%>

<form>
    <input type="number" name="num1" value="<%= n1 %>">
    +
    <input type="number" name="num2" value="<%= n2 %>">
    <input type="submit" value="=">
    <input type="text" readonly value="<%= result %>">
</form>

</body>
</html>
