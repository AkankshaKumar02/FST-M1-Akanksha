import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class TestCalculator {
    private Calculator calculator;

    @BeforeEach
    public void setUp() throws Exception {
        calculator = new Calculator();
    }

    @Test
    @DisplayName("Multiplication")
    public void testMultiply() {
        assertEquals(36, calculator.multiply(6, 6));
    }

    @Test
    @DisplayName("Addition")
    public void testAddition() {
        assertEquals(76, calculator.add(10, 66));
    }
}
