<%--
  Created by IntelliJ IDEA.
  User: xh
  Date: 2025/9/27
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if ("admin".equals(username)&&"123456".equals(password)){
String level="vip";
        session.setAttribute("username", username);  // 存用户名
        session.setAttribute("level", level);

%>
<jsp:forward page="welcome.jsp">

<jsp:param name="level" value="<%=level%>"/>
</jsp:forward>
<%
}else {%>
<jsp:forward page="fail.jsp"></jsp:forward>


<%
    }
%>


</body>
</html>
