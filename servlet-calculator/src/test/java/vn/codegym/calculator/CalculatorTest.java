package vn.codegym.calculator;

import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class CalculatorTest {
    @Test public void adds() { assertEquals(8, Calculator.calculate(5, 3, "+"), 0.000001); }
    @Test public void subtracts() { assertEquals(2, Calculator.calculate(5, 3, "-"), 0.000001); }
    @Test public void multiplies() { assertEquals(-15, Calculator.calculate(-5, 3, "*"), 0.000001); }
    @Test public void divides() { assertEquals(2.5, Calculator.calculate(5, 2, "/"), 0.000001); }
    @Test public void handlesDecimals() { assertEquals(0.3, Calculator.calculate(0.1, 0.2, "+"), 0.000001); }
    @Test(expected = ArithmeticException.class) public void rejectsZeroDivisor() { Calculator.calculate(5, 0, "/"); }
    @Test(expected = ArithmeticException.class) public void rejectsNegativeZeroDivisor() { Calculator.calculate(5, -0.0, "/"); }
    @Test(expected = IllegalArgumentException.class) public void rejectsUnknownOperator() { Calculator.calculate(5, 2, "%"); }
    @Test(expected = IllegalArgumentException.class) public void rejectsNonFiniteOperand() { Calculator.calculate(Double.NaN, 2, "+"); }
    @Test(expected = ArithmeticException.class) public void rejectsOverflow() { Calculator.calculate(Double.MAX_VALUE, 2, "*"); }
}
