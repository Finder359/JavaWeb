<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<html>
<head>
    <title>访问页面</title>
</head>
<body>
<%
    // 名字
    String name = "路育涵";

    // 获取当前时间
    Date now = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分");

    String timeStr = sdf.format(now);
%>

<h2><%= name %> 在 <%= timeStr %> 访问了本页面</h2>

</body>
</html>
