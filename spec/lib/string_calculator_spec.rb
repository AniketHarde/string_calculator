require 'string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  it "is expected to returns 0 for an empty string" do
    expect(calculator.add("")).to eq(0)
  end

  context "when given a single number" do
    it "is expected to return 0 for '0'" do
      expect(calculator.add("0")).to eq(0)
    end
  end
end
