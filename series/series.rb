require "byebug"
class Series
  attr_reader :series

  def initialize(series)
    @series = series
  end

  def slices(slice_size)
    # TODO: refactor
    raise ArgumentError.new('asds') if slice_size > series.size
    a = series.chars
    b = series.chars
    result = []
    a.each do |item|
      slice = b.first(slice_size).join
      result << slice if slice.size == slice_size
      b.shift
    end
    result
  end
end
