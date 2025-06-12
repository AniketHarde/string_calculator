require 'string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  it "is expected to returns 0 for an empty string" do
    expect(calculator.add("")).to eq(0)
  end
end
