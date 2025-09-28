<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>百家乐</title>
    <style>
        /* 页面整体背景 */
        body {
            margin: 0;
            font-family: "微软雅黑", Arial, sans-serif;
            background: linear-gradient(135deg, #74ebd5 0%, #9face6 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* 卡片容器 */
        .card {
            background: rgba(255, 255, 255, 0.95);
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            text-align: center;
            width: 400px;
        }

        .card h1 {
            margin-bottom: 20px;
            color: #333;
        }

        .card p {
            font-size: 16px;
            margin-bottom: 30px;
            color: #555;
        }

        /* 按钮样式 */
        .btn {
            display: inline-block;
            padding: 12px 25px;
            margin: 5px;
            border-radius: 8px;
            border: none;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            color: #fff;
            background: linear-gradient(90deg, #ff6a6a, #ff8c42);
            transition: 0.3s;
            text-decoration: none;
        }

        .btn:hover {
            background: linear-gradient(90deg, #ff8c42, #ff6a6a);
        }

        /* 用户信息样式 */
        .userinfo {
            margin-bottom: 25px;
            font-size: 14px;
            color: #888;
        }
    </style>
</head>
<body>

<div class="card">
    <h1>🎲 百家乐 🎲</h1>
    <div class="userinfo">
        欢迎 <strong><%=session.getAttribute("username")%></strong>，
        用户等级：<strong><%=session.getAttribute("level")%></strong>
    </div>

    <p>开始你的刺激百家乐之旅吧！</p>

    <!-- 示例按钮 -->
    <a href="#" class="btn">开始游戏</a>
    <a href="logout.jsp" class="btn" style="background: #555;">退出登录</a>
</div>

</body>
</html>
