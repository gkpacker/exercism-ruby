module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

class Sieve
  require 'prime'

  def initialize(number)
    @number = number
  end

  def primes
    Prime.each(@number).to_a
  end
end
