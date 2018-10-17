module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

class Sieve
  require 'prime'

  def initialize(number)
    @number = number
  end

  def primes
    result = []
    Prime.each(@number) { |prime| result << prime }
    result
  end
end
