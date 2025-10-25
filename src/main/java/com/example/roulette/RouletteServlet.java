package com.example.roulette;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Random;


public class RouletteServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        int chips = session.getAttribute("chips") == null ? 1000 : (int) session.getAttribute("chips");

        int betAmount = Integer.parseInt(request.getParameter("betAmount"));
        String color = request.getParameter("color");

        if (betAmount > chips) {
            request.setAttribute("msg", "筹码不足！");
            request.getRequestDispatcher("/chap02/pg-game/game/Roulette.jsp").forward(request, response);
            return;
        }

        // 随机结果
        String[] colors = {"red", "black"};
        String resultColor = colors[new Random().nextInt(colors.length)];

        boolean win = resultColor.equals(color);
        if (win) {
            chips += betAmount;
        } else {
            chips -= betAmount;
        }

        session.setAttribute("chips", chips);
        request.setAttribute("resultColor", resultColor);
        request.setAttribute("win", win);
        request.setAttribute("betAmount", betAmount);

        request.getRequestDispatcher("/chap02/pg-game/game/result.jsp").forward(request, response);
    }
}
