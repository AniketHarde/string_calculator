class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    return sum_of_numbers(numbers) if numbers.include?(",")
    numbers.to_i
  end

  private

  def sum_of_numbers(numbers)
    normalized = numbers.gsub("\n", ",")
    normalized.split(",").map(&:to_i).sum
  end
end