require_relative "string_calculator"

RSpec.describe StringCalculator do
  it "initializes the StringCalculator class" do
    expect { StringCalculator.new }.not_to raise_error
  end
end
