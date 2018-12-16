class Binary
  def self.to_decimal(number)
    chars = number.reverse.chars

    raise ArgumentError unless chars.all? { |char| '01'.include?(char) }

    chars.flat_map.with_index { |char, index| char.to_i * (2 ** index) }.sum
  end
end
