class Luhn
  attr_reader :input

  def initialize(input)
    @input = input.gsub(' ', '')
  end

  def self.valid?(input)
    new(input).valid?
  end

  def valid?
    return false if short_input? || input_contains_non_digits

    luhn_sum % 10 == 0
  end

  private

  def input_contains_non_digits?
    input =~ /\D/
  end

  def short_input?
    input.size <= 1
  end

  def luhn_sum
    input.to_i.digits.each_with_index.sum do |digit, index|
      luhn_digit(digit, index)
    end
  end

  def luhn_digit(digit, index)
    digit *= 2 if index.odd?
    digit -= 9 if digit > 9

    digit
  end
end

