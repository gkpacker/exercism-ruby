class PhoneNumber
  attr_reader :number

  def self.clean(input)
    phone = new(input)

    phone.clean_num
  end

  def initialize(input)
    @number = input.scan(/\d/)
  end

  def clean_num
    number.shift if number.first == '1'

    return unless valid?

    number.join
  end

  def valid?
    number.size == 10 &&
      number.first != '1' &&
      number.values_at(0,3).all? { |value| ('2'..'9').include?(value) }
  end
end
