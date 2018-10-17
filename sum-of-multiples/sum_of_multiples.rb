module BookKeeping
  VERSION = 2
end

class SumOfMultiples
  def initialize(n1=0, n2=0, n3=0)
    @n1 = n1
    @n2 = n2
    @n3 = n3
  end

  def to(limit)
    multiples = (0..limit-1).select do |number|
      divisor?(number, @n1) ||
      divisor?(number, @n2) ||
      divisor?(number, @n3)
    end

    multiples.sum
  end

  private

  def divisor?(number, divisor)
    divisor.nonzero? && (number % divisor) == 0
  end
end
