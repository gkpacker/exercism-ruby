class Scrabble
  VALUES = {
    1 => %w(A E I O U L N R S T),
    2 => %w(D G),
    3 => %w(B C M P),
    4 => %w(F H V W Y),
    5 => %w(K),
    8 => %w(J X),
    10 => %w(Q Z)
  }

  def initialize(string)
    @string = string
  end

  def self.score(string)
    @string = string
    score
  end

  def score
    return 0 if @string.nil?

    letter_values =
      @string.chars.flat_map do |char|
        VALUES.flat_map do |key, value|
          key if value.include?(char.upcase)
        end
      end

    letter_values.compact.sum
  end
end
