<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>JSP 学习网站</title>
    <link rel="icon" href="/img/4.png" type="image/png">

    <style>
        body {
            font-family: "Microsoft YaHei", Arial, sans-serif;
            background: #f4f6f9;
            margin: 0;
            padding: 0;
        }

        header {
            background: #4CAF50;
            color: white;
            text-align: center;
            padding: 20px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.2);
        }

        header h1 {
            margin: 0;
            font-size: 32px;
        }

        main {
            width: 80%;
            max-width: 900px;
            margin: 30px auto;
            background: white;
            padding: 20px 30px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        h2 {
            color: #333;
            border-left: 5px solid #4CAF50;
            padding-left: 10px;
            margin-top: 30px;
        }

        a {
            display: inline-block;
            margin: 10px 10px 10px 0;
            padding: 8px 15px;
            background: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 6px;
            transition: background 0.3s;
        }

        a:hover {
            background: #45a049;
        }

        footer {
            text-align: center;
            padding: 15px;
            margin-top: 40px;
            background: #eee;
            font-size: 14px;
            color: #666;
        }
    </style>
</head>

<body>
<header>
    <h1>JSP 学习网站</h1>
    <p>从入门到进阶的小练习</p>
</header>

<main>
    <h2>第一单元：基础练习</h2>
    <a href="chap01/math/factorial.jsp" target="_blank">阶乘（第N次改进版）</a>
    <a href="chap01/jiujiu.jsp" target="_blank">九九乘法表</a>
    <a href="chap01/game.jsp" target="_blank">猜数游戏</a>
    <a href="chap01/calculator.jsp" target="_blank">简易计算器</a>

    <h2>第二单元：进阶练习</h2>
    <p>待补充……</p>
</main>

<footer>
    &copy; 2025 JSP 学习网站 | Made with ❤
</footer>
</body>
</html>
