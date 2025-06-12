class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    return numbers.split(",",2).map(&:to_i).sum if numbers.include?(",")
    numbers.to_i
  end
end