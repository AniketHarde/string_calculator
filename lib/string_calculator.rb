class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    sum_of_numbers(numbers)
  end

  private

  def sum_of_numbers(numbers)
    normalized = numbers.gsub("\n", ",")
    normalized.split(",").map(&:to_i).sum
  end
end