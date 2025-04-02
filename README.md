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





using Xunit;
using CalculatorLib;
using System;

namespace CalculatorTests
{
    public class CalculatorTests
    {
        private readonly Calculator _calculator = new();

        [Fact]
        public void Add_ShouldReturnSum()
        {
            int result = _calculator.Add(5, 3);
            Assert.Equal(8, result);
        }

        [Fact]
        public void Subtract_ShouldReturnDifference()
        {
            int result = _calculator.Subtract(5, 3);
            Assert.Equal(2, result);
        }

        [Fact]
        public void Multiply_ShouldReturnProduct()
        {
            int result = _calculator.Multiply(5, 3);
            Assert.Equal(15, result);
        }

        [Fact]
        public void Divide_ShouldReturnQuotient()
        {
            int result = _calculator.Divide(10, 2);
            Assert.Equal(5, result);
        }

        [Fact]
        public void Divide_ByZero_ShouldThrowException()
        {
            Assert.Throws<DivideByZeroException>(() => _calculator.Divide(10, 0));
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
