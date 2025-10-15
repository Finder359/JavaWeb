<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="checkLogin.jsp" %>
<%
        String username = (String) session.getAttribute("username");
    String loginTime = (String) session.getAttribute("loginTime");
%>

<html>
<head>
    <title>用户仪表盘</title>
    <script>
        // 检测用户操作超时（前端层面）
        // 定义一个变量来保存计时器
        let timeout;
        // 定义一个函数：重置计时器（用户有操作时就会触发）
        function resetTimer() {
            // 每次调用都先清除旧的定时器
            clearTimeout(timeout);
            // 设置一个新的定时器：2分钟后自动跳转
            timeout = setTimeout(function () {
                window.location.href = "timeout.jsp";
            }, 120000); // 120000 毫秒 = 2 分钟
        }
        // 当用户移动鼠标时，重新计时
        document.onmousemove = resetTimer;
        // 当用户敲击键盘时，也重新计时
        document.onkeypress = resetTimer;
        // 页面加载完成后，启动计时器
        window.onload = resetTimer;
    </script>
</head>
<body>
<h2>欢迎进入用户仪表盘</h2>
<p>用户名：<%= username %></p>
<p>本次登录时间：<%= loginTime %></p>
<p>两分钟未动作鼠标键盘将会超时自动登出</p>
<p><a href="logout.jsp">退出登录</a></p>
</body>
</html>
