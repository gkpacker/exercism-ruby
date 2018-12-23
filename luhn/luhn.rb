class Luhn
  attr_reader :input

  def initialize(input)
    @input = input.split.join
  end

  def self.valid?(input)
    luhn = new(input)

    luhn.valid?
  end

  def valid?
    return false if input.size <= 1 || input =~ /\D/

    sum = input.to_i.digits.each_with_index.sum do |digit, index|
      apply_luhn(digit, index)
    end

    sum % 10 == 0
  end

  private

  def apply_luhn(digit, index)
    digit *= 2 if index.odd?
    digit -= 9 if digit > 9

    digit
  end
end

