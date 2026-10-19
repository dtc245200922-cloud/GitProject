package vn.codegym.calculator;

public class Calculator {
    public static double calculate(double firstOperand, double secondOperand, String operator) {
        if (!Double.isFinite(firstOperand) || !Double.isFinite(secondOperand)) {
            throw new IllegalArgumentException("Toán hạng phải là số hữu hạn.");
        }
        if (operator == null) {
            throw new IllegalArgumentException("Vui lòng chọn phép toán.");
        }
        double result;
        switch (operator) {
            case "+": result = firstOperand + secondOperand; break;
            case "-": result = firstOperand - secondOperand; break;
            case "*": result = firstOperand * secondOperand; break;
            case "/":
                // Ném ngoại lệ khi mẫu số bằng 0, kể cả -0.0.
                if (secondOperand == 0) {
                    throw new ArithmeticException("Không thể chia cho 0.");
                }
                result = firstOperand / secondOperand;
                break;
            default: throw new IllegalArgumentException("Phép toán không hợp lệ.");
        }
        if (!Double.isFinite(result)) {
            throw new ArithmeticException("Kết quả vượt quá phạm vi tính toán.");
        }
        return result;
    }
}
