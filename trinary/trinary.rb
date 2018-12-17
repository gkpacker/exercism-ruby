class Trinary
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def to_decimal
    return 0 if input =~ /[^012]/

    input.to_i.digits.each_with_index.sum { |digit, index| digit * 3**index }
  end
end
