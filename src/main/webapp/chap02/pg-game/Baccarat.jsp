<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="checkLogin.jsp" %>
<html>
<head>
    <title>百家乐</title>
    <style>
        body {
            margin: 0;
            font-family: "微软雅黑", Arial, sans-serif;
            background-color: #f5f7fa;
        }
        /* 顶部区域 */
        .header {
            position: relative;
            width: 100%;
            height: 200px;
            background: url('img/backg.jpg') no-repeat center center;
            background-size: cover;
            display: flex;
            align-items: flex-end;
            padding: 20px;
            color: #fff;
        }
        .header .welcome-text {
            font-size: 20px;
            font-weight: bold;
            text-shadow: 0 2px 5px rgba(0,0,0,0.6);
        }
        /* 返回按钮 */
        .back-btn {
            position: absolute;
            top: 20px;
            right: 20px;
            background: rgba(255,255,255,0.85);
            color: #333;
            padding: 8px 16px;
            border: none;
            border-radius: 6px;
            font-size: 14px;
            cursor: pointer;
            transition: 0.3s;
        }
        .back-btn:hover {
            background: rgba(240,240,240,0.95);
        }
        /* 主体内容区 */
        .content {
            padding: 40px;
            text-align: center;
            font-size: 18px;
            color: #333;
        }
    </style>
</head>
<body>

<div class="header">
    <div class="welcome-text">
        欢迎 <%=session.getAttribute("username")%>，
        用户等级：<%=session.getAttribute("level")%>
    </div>
    <button class="back-btn" onclick="window.location.href='welcome.jsp'">返回首页</button>
</div>

<div class="content">
    欢迎游玩百家乐
    <br><br>

</div>

</body>
</html>
