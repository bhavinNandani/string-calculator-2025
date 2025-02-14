class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = /[\n,]/
    if numbers.start_with?("//")
      delimiter = numbers[2..numbers.index("\n") - 1]
      numbers = numbers[(numbers.index("\n") + 1)..]
    end

    num_array = numbers.split(delimiter).map(&:to_i)
    negatives = num_array.select(&:negative?)
    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?

    num_array.sum
  end
end
