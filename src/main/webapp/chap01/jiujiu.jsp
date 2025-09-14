<%--
  Created by IntelliJ IDEA.
  User: xh
  Date: 2025/9/13
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>九九乘法表</title>
</head>
<body>
<h2>九九乘法表</h2>
<%--<table >--%>
<%--    <%--%>
<%--        for(int i = 1; i <= 9; i++){--%>
<%--            out.print("<tr>");--%>
<%--            for(int j = 1; j <= i; j++){--%>
<%--                out.print("<td>" + j + " × " + i + " = " + (i * j) + "</td>");--%>
<%--            }--%>
<%--            out.print("</tr>");--%>
<%--        }--%>
<%--    %>--%>
<%--</table>--%>

<table >
    <% for(int i = 1; i <= 9; i++) { %>
    <tr>
        <% for(int j = 1; j <= i; j++) { %>
        <td><%= j %> × <%= i %> = <%= i * j %></td>
        <% } %>
    </tr>
    <% } %>
</table>




</body>
</html>
