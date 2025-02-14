class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = /[\n,]/
    if numbers.start_with?("//")
      delimiter = numbers[2..numbers.index("\n") - 1]
      numbers = numbers[(numbers.index("\n") + 1)..]
    end

    numbers.split(delimiter).map(&:to_i).sum
  end

end
