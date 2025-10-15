<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 清除session
    session.invalidate();

    // 清除cookie
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie c : cookies) {
            if ("autoLoginUser".equals(c.getName()) || "autoLoginToken".equals(c.getName())) {
                c.setMaxAge(0);
                response.addCookie(c);
            }
        }
    }

    response.sendRedirect("login.jsp");
%>
