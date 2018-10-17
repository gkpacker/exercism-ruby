class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(slice_size)
    raise ArgumentError if slice_size > @digits.size

    (0..@digits.length - slice_size).map { |index| @digits[index, slice_size] }
  end
end
