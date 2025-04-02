# DSI02T

*ATV 01*

*Calculador*
using System;

namespace CalculatorLib
{
    public class Calculator
    {
        public int Add(int a, int b) => a + b;

        public int Subtract(int a, int b) => a - b;

        public int Multiply(int a, int b) => a * b;

        public int Divide(int a, int b)
        {
            if (b == 0) throw new DivideByZeroException("Cannot divide by zero");
            return a / b;
        }

        public bool IsPrime(int number)
        {
            if (number <= 1) return false;
            if (number == 2) return true;
            if (number % 2 == 0) return false;

            for (int i = 3; i * i <= number; i += 2)
            {
                if (number % i == 0) return false;
            }
            return true;
        }
    }
}




        [Theory]
        [InlineData(2, true)]
        [InlineData(3, true)]
        [InlineData(4, false)]
        [InlineData(5, true)]
        [InlineData(10, false)]
        public void IsPrime_ShouldDeterminePrimes(int number, bool expected)
        {
            bool result = _calculator.IsPrime(number);
            Assert.Equal(expected, result);
        }
    }
}
