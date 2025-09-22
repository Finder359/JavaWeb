<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>
<html>
<head>
    <title>错误提示</title>
</head>
<body>
<h2 >
    <%
        String msg = request.getParameter("msg");
        if (msg != null) {
            msg = URLDecoder.decode(msg, "UTF-8");
            out.print(msg);
        }
    %>
</h2>
<form action="factorial.jsp">
    <input type="submit" value="重新输入">
</form>
</body>
</html>
