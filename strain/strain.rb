# fronze_literal_strings: true

module Enumerable
  def keep
    return self unless block_given?

    map { |element| element if yield(element) }.compact
  end

  def discard
    return self unless block_given?

    map { |element| element unless yield(element) }.compact
  end
end
