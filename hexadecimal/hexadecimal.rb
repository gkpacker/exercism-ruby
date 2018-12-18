class Hexadecimal
  attr_reader :input

  VALUES = {
    '0' => 0,
    '1' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
    'a' => 10,
    'b' => 11,
    'c' => 12,
    'd' => 13,
    'e' => 14,
    'f' => 15
  }

  def initialize(input)
    @input = input.reverse
  end

  def to_decimal
    input.chars.each_with_index.sum do |char, index|
      return 0 if VALUES[char].nil?

      VALUES[char] * 16 ** index
    end
  end
end
