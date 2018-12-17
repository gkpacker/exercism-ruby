class Binary
  def self.to_decimal(input)
    raise ArgumentError if input =~ /[^01]/

    input.to_i.digits.each_with_index.sum { |digit, index| digit * (2 ** index) }
  end
end
