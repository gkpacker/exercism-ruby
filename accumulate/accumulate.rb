module BookKeeping
  VERSION = 1
end

class Array
  def accumulate
    map { |item| yield item }
  end
end
