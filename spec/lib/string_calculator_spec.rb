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

  context "when given two numbers" do
    it "is expected to return 3 for '1,2'" do
      expect(calculator.add("1,2")).to eq(3)
    end

    it "is expected to return 25 for '10,15'" do
      expect(calculator.add("10,15")).to eq(25)
    end
  end

  context "when given more then two numbers" do
    it "is expected to return 6 for '1,2,3'" do
      expect(calculator.add("1,2,3")).to eq(6)
    end
    it "is expected to return 55 for '10,20,25'" do
      expect(calculator.add("10,20,25")).to eq(55)
    end

    it "is expected to return 100 for '25,25,50'" do
      expect(calculator.add("25,25,50")).to eq(100)
    end

  end

  context "when given new lines between numbers" do
    it "is expected to return 6 for '1\\n2,3'" do
      expect(calculator.add("1\n2,3")).to eq(6)
    end

    it "is expected to return 6 for '1\\n2\\n3'" do
      expect(calculator.add("1\n2\n3")).to eq(6)
    end
  end

  context "when given a custom delimiter" do
    it "is expected to return 3 for '//;\\n1;2'" do
      expect(calculator.add("//;\n1;2")).to eq(3)
    end

    it "is expected to return 6 for '//;\\n1;2\\n3'" do
      expect(calculator.add("//;\n1;2\n3")).to eq(6)
    end

    it "is expected to return 6 for '//|\\n1|2|3'" do
      expect(calculator.add("//|\n1|2|3")).to eq(6)
    end

    it "is expected to return 10 for '//,\\n5,5'" do
      expect(calculator.add("//,\n5,5")).to eq(10)
    end
  end

end
