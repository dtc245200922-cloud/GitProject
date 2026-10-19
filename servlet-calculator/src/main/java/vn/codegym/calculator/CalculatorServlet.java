package vn.codegym.calculator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/calculate")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect(request.getContextPath() + "/");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        try {
            String first = request.getParameter("firstOperand");
            String second = request.getParameter("secondOperand");
            if (first == null || second == null || first.trim().isEmpty() || second.trim().isEmpty()) {
                throw new IllegalArgumentException("Vui lòng nhập đầy đủ hai toán hạng.");
            }
            double a = Double.parseDouble(first.trim());
            double b = Double.parseDouble(second.trim());
            String operator = request.getParameter("operator");
            double result = Calculator.calculate(a, b, operator);
            request.setAttribute("expression", a + " " + operator + " " + b + " = " + result);
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Toán hạng phải là số hợp lệ.");
        } catch (ArithmeticException | IllegalArgumentException e) {
            // Hiển thị lỗi thân thiện, bao gồm trường hợp chia cho 0.
            request.setAttribute("error", e.getMessage());
        }
        request.getRequestDispatcher("/WEB-INF/result.jsp").forward(request, response);
    }
}
