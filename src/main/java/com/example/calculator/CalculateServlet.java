package com.example.calculator;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/calculator_war_exploded")
public class CalculateServlet extends HttpServlet {
    @Override
    protected  void doPost(HttpServletRequest req, HttpServletResponse resp){

        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");

        Double firstNum = Double.valueOf(req.getParameter("firstNum"));
        Double secondNum = Double.valueOf(req.getParameter("secondNum"));
        String operator = req.getParameter("operator");

        Double rezult = 0.0;

        if("+".equals(operator)){
            rezult = firstNum + secondNum;
        }

        if("-".equals(operator)){
            rezult = firstNum - secondNum;
        }

        if("*".equals(operator)){
            rezult = firstNum * secondNum;
        }

        if("/".equals(operator)){
            rezult = firstNum / secondNum;
        }
        PrintWriter out = null;
        try {
             out = resp.getWriter();
        } catch (IOException e) {
            System.out.println("Error output rezult");
        }

        out.println(firstNum + " " + operator + " " + secondNum + " " + rezult);
        out.println("<br><a href='index.jsp'>Возврат</a>");
        out.flush();
        out.close();

    }
}
