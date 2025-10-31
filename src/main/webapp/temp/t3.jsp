<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>

<html>
<head>
    <title>娱乐大厅</title>
    <style>
        body {
            margin: 0;
            font-family: "Microsoft YaHei", sans-serif;
            background: radial-gradient(circle at center, #1a1a1a 0%, #000 100%);
            color: #fff;
            overflow-x: hidden;
        }

        header {
            background: linear-gradient(90deg, #2a2a2a, #1b1b1b);
            border-bottom: 2px solid #d4af37;
            padding: 15px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 0 10px #000;
        }

        header h1 {
            color: #d4af37;
            font-weight: 700;
            font-size: 22px;
            letter-spacing: 1px;
        }

        .user-info {
            color: #ccc;
            font-size: 14px;
        }

        .dashboard {
            padding: 30px;
        }

        .game-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }

        .game-card {
            background: linear-gradient(145deg, #222, #111);
            border: 1px solid rgba(212,175,55,0.5);
            border-radius: 10px;
            overflow: hidden;
            text-align: center;
            transition: all 0.3s ease;
            cursor: pointer;
            box-shadow: 0 0 12px rgba(212,175,55,0.1);
        }

        .game-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 0 20px rgba(212,175,55,0.3);
        }

        .game-card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
            filter: brightness(0.85);
        }

        .game-card h3 {
            margin: 10px 0;
            color: #d4af37;
        }

        .button {
            display: inline-block;
            background: #d4af37;
            color: #000;
            padding: 8px 20px;
            border-radius: 6px;
            font-weight: bold;
            text-decoration: none;
            transition: background 0.2s ease;
        }

        .button:hover {
            background: #e5c14a;
        }

        footer {
            text-align: center;
            padding: 15px;
            color: #888;
            border-top: 1px solid #222;
            background: #111;
        }

        .counter {
            margin-top: 15px;
            color: #999;
            font-size: 13px;
        }
    </style>
</head>
<body>

<%
    String username = (String) session.getAttribute("username");
    String level = (String) session.getAttribute("level");

    Integer count = (Integer)application.getAttribute("count");
    if (count == null) count = 0;
    Boolean visited = (Boolean)session.getAttribute("visited");
    if (visited == null || !visited) {
        count++;
        application.setAttribute("count", count);
        session.setAttribute("visited", true);
    }
%>

<header>
    <h1>🎯 娱乐大厅</h1>
    <div class="user-info">
        欢迎回来，<%= username %>（等级：<%= level %>）
    </div>
</header>

<div class="dashboard">
    <h2 style="color:#d4af37;">精选项目</h2>

    <div class="game-grid">
        <div class="game-card">
            <img src="images/baccarat.jpg" alt="百家乐">
            <h3>百家乐</h3>
            <a href="game/Baccarat.jsp" class="button">进入游戏</a>
        </div>

        <div class="game-card">
            <img src="images/roulette.jpg" alt="轮盘赌">
            <h3>轮盘赌</h3>
            <a href="game/Roulette.jsp" class="button">进入游戏</a>
        </div>

        <div class="game-card">
            <img src="images/poker.jpg" alt="德州扑克">
            <h3>德州扑克</h3>
            <a href="#" class="button">即将上线</a>
        </div>

        <div class="game-card">
            <img src="images/mahjong.jpg" alt="麻将">
            <h3>麻将</h3>
            <a href="#" class="button">进入游戏</a>
        </div>
    </div>

    <div class="counter">
        🌍 当前网站访问量：<%= count %>
    </div>
</div>

<footer>
    © 2025 在线娱乐大厅 | 纯展示版界面 ✨
</footer>

</body>
</html>
