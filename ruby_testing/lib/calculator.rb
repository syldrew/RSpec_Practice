#lib/calculator.rb

class Calculator
    def add(a,b,c)
       a + b + c        #=> add this
    end
  end

  class Calculator
    def multiply(a, b)
      a * b
    end
  end

  class Calculator
    def subtract(a, b)
      a - b
    end
  end

  class Calculator
    def divide(a, b)
      if b.zero?
        raise ArgumentError, "Cannot divide by zero"
      else
        a / b
      end
    end
  end
