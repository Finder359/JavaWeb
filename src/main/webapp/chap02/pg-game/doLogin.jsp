<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String autoLogin = request.getParameter("autoLogin");

    if ("admin".equals(username)&&"123456".equals(password)){
String level="vip";
        session.setAttribute("username", username);  // 存用户名
        session.setAttribute("level", level);

        session.setAttribute("loginTime", new java.util.Date().toString()); // 记录本次登录时间
//        session.setMaxInactiveInterval(120); // 设置 session 超时时间为 120 秒（2分钟）


        if ("true".equals(autoLogin)) {
            // 生成简单token，
//            用户勾选了“自动登录”；
//            我随机生成一个 token；
//            把用户名和 token 都写进 cookie；
//            下次访问 login.jsp 时，如果检测到 cookie 还在，就不必重新输入密码；
//            直接认定你是这个用户，自动登录成功。
            String token = java.util.UUID.randomUUID().toString();
            Cookie cUser = new Cookie("autoLoginUser", username);
            Cookie cToken = new Cookie("autoLoginToken", token);
            cUser.setMaxAge(60 * 60 * 24);  // 1天
            cToken.setMaxAge(60 * 60 * 24);
            response.addCookie(cUser);
            response.addCookie(cToken);
        } else {
            // 只记住用户名
            Cookie cUser = new Cookie("autoLoginUser", username);
            cUser.setMaxAge(60 * 60 * 24);
            response.addCookie(cUser);
        }

        response.sendRedirect("welcome.jsp");
    } else {
        out.println("<script>alert('用户名或密码错误');location.href='login.jsp';</script>");
    }
%>


</body>
</html>
