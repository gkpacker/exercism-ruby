module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

class Prime
  require 'prime'

  def self.nth(number)
    raise ArgumentError.new("There is no 0th prime number") if number.zero?
    Prime.first(number).last
  end
end
