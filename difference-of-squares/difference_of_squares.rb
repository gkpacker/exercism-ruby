module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end

class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum
    range.sum ** 2
  end

  def sum_of_squares
    range.map { |number| number ** 2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private

  def range
    (1..@number)
  end
end
