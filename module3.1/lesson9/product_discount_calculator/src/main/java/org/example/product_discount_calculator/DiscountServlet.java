package org.example.product_discount_calculator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/display-discount")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String description = req.getParameter("description");
        double price = Double.parseDouble(req.getParameter("price"));
        double percent = Double.parseDouble(req.getParameter("percent"));
        double discountAmount = price * percent * 0.01;
        double discountedPrice = price - discountAmount;
        req.setAttribute("description", description);
        req.setAttribute("price", price);
        req.setAttribute("percent", percent);
        req.setAttribute("discountAmount", discountAmount);
        req.setAttribute("discountedPrice", discountedPrice);
        req.getRequestDispatcher("result.jsp").forward(req, resp);
    }
}
