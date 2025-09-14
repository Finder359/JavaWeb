<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>猜数字游戏</title>
</head>
<body>
<h2>猜数字游戏（范围 1 ~ 100）</h2>

<%!
    // 声明一个类级变量，JSP 加载时就生成随机数
    int secret = (int)(Math.random() * 100) + 1;
%>

<form method="post">
    你猜的数字: <input type="number" name="guess" required>
    <input type="submit" value="提交">
</form>

<%
    String guessStr = request.getParameter("guess");

    if(guessStr != null){
        int guess = Integer.parseInt(guessStr);

        if(guess > secret){
            out.println("<p>太大了！</p>");
        }else if(guess < secret){
            out.println("<p>太小了！</p>");
        }else{
            out.println("<p>恭喜你，猜对了！答案是 " + secret + "</p>");
        }
    }
%>

</body>
</html>
