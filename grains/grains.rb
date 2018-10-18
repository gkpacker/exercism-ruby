module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

class Grains
  MAX_SQUARES = 64

  def self.total
    square(MAX_SQUARES) * 2 - 1
  end

  def self.square(number)
    raise ArgumentError.new('Invalid parameter') if (number < 1 || number > MAX_SQUARES)
    2 ** (number - 1)
  end
end

