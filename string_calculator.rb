class StringCalculator
  DEFAULT_DELIMITERS = /[\n,]/

  def add(numbers)
    return 0 if numbers.empty?

    delimiter, numbers = parse_delimiter(numbers)
    num_array = numbers.split(delimiter).map(&:to_i)

    check_for_negatives(num_array)

    num_array.sum
  end

  private
  def parse_delimiter(numbers)
    return [DEFAULT_DELIMITERS, numbers] unless numbers.start_with?("//")

    delimiter, numbers = numbers.split("\n", 2)
    custom_delimiter = delimiter[2..]

    [Regexp.escape(custom_delimiter), numbers]
  end

  def check_for_negatives(numbers)
    negatives = numbers.select(&:negative?)
    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?
  end
end
