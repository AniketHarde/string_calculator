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

    it "is expected to return 1 for '1'" do
      expect(calculator.add("1")).to eq(1)
    end

    it "is expected to return 11 for '11'" do
      expect(calculator.add("11")).to eq(11)
    end
  end
end
