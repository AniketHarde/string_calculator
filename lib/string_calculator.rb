class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    sum_of_numbers(numbers)
  end

  private

  def sum_of_numbers(numbers)
    delimiter, numbers = saperate_delimiter_and_numbers(numbers)
    numbers = numbers.split(delimiter).map(&:to_i)
    find_negatives_and_raise_exception(numbers)
    numbers.sum
  end

  def saperate_delimiter_and_numbers(numbers)
    delimiter = ","
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = parts.first.gsub("//", "")
      numbers = parts.last
    end
    [delimiter, numbers.gsub("\n", delimiter)]
  end

  def find_negatives_and_raise_exception(numbers)
    negatives = numbers.select { |n| n < 0 }
    if negatives.any?
      raise("Negative numbers not allowed: #{negatives.join(', ')}")
    end
  end
end