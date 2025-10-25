<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("username") == null) {
%>
<script>
    alert("未登录，请先登录！");
    window.location.href = "/chap02/pg-game/login.jsp";
</script>
<%
        return;
    }
%>
