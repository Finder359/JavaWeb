<%--
  Created by IntelliJ IDEA.
  User: xh
  Date: 2025/10/18
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //访问量计数器
    //把count取出来并强制类型转换成int后再做计算
    int count = 0;
//    System.out.println(count);
    if (application.getAttribute("count")== null) {
        count = 1;
    } else {
        count=(int)application.getAttribute("count");
        if (session.isNew()){

            count++;
        }

    }
    application.setAttribute("count", count);
%>


当前网站访问量：<%= count %>
</body>
</html>
