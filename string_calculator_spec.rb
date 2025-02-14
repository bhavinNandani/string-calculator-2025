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
  end
  
end
