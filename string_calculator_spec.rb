require_relative "string_calculator"

RSpec.describe StringCalculator do
  it "initializes the StringCalculator class" do
    expect { StringCalculator.new }.not_to raise_error
  end

  context "#add" do
    it "returns 0 for an empty string" do
      calculator = StringCalculator.new
      expect(calculator.add("")).to eq(0)
    end

    it "returns the number itself when a single number is provided" do
      calculator = StringCalculator.new
      expect(calculator.add("5")).to eq(5)
    end

    it "returns the sum of two numbers" do
      calculator = StringCalculator.new
      expect(calculator.add("1,2")).to eq(3)
    end

    it "handles new lines as delimiters" do
      calculator = StringCalculator.new
      expect(calculator.add("1\n2,3")).to eq(6)
    end

    it "handles custom delimiters" do
      calculator = StringCalculator.new
      expect(calculator.add("//;\n1;2")).to eq(3)
    end
  end
  
end
