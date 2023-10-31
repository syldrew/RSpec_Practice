#spec/calculator_spec.rb

require './lib/calculator'  #=> add this


#describe Calculator do
 #   describe "#add" do
 #     it "returns the sum of two numbers" do
 #       calculator = Calculator.new
 #       expect(calculator.add(5, 2)).to eql(7)
 #     end
 #   end
 # end

  
  #describe the class
  #describe the method example group. Conventionally, the string argument for instance methods are written as “#method”, while string arguments for class methods are written as “.method”.
  #Write your test case/example with it.
  #Write your expectation using expect. The expect method is also chained with .to for positive expectations, or .to_not/.not_to for negative expectations. We prefer .not_to. Also, limit one expect clause per test case.

  describe Calculator do
    describe "#add" do
      it "returns the sum of more than two numbers" do
        calculator = Calculator.new
        expect(calculator.add(2, 5, 7)).to eql(14)
      end
      end
    end

    RSpec.describe Calculator do
        describe "#multiply" do
          it "returns the product of two numbers" do
            calculator = Calculator.new
            result = calculator.multiply(3, 4)
            expect(result).to eq(12)
          end
      
          it "returns 0 when multiplying by 0" do
            calculator = Calculator.new
            result = calculator.multiply(5, 0)
            expect(result).to eq(0)
          end
      
          it "returns a negative product when one input is negative" do
            calculator = Calculator.new
            result = calculator.multiply(6, -2)
            expect(result).to eq(-12)
          end
        end
      end


      RSpec.describe Calculator do
        describe "#subtract" do
          it "returns the result of subtracting two numbers" do
            calculator = Calculator.new
            result = calculator.subtract(7, 3)
            expect(result).to eq(4)
          end
      
          it "returns a negative result when subtracting a smaller number from a larger number" do
            calculator = Calculator.new
            result = calculator.subtract(3, 7)
            expect(result).to eq(-4)
          end
      
          it "returns 0 when subtracting a number from itself" do
            calculator = Calculator.new
            result = calculator.subtract(5, 5)
            expect(result).to eq(0)
          end
        end
    end

    RSpec.describe Calculator do
        describe "#divide" do
          it "returns the result of dividing one number by another" do
            calculator = Calculator.new
            result = calculator.divide(10, 2)
            expect(result).to eq(5)
          end
      
          it "raises an ArgumentError when attempting to divide by zero" do
            calculator = Calculator.new
            expect { calculator.divide(8, 0) }.to raise_error(ArgumentError, "Cannot divide by zero")
          end
        end
      end