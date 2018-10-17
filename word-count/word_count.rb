class Phrase
  def initialize(words)
    @words = from_phrase(words)
  end

  def word_count
    @words.each_with_object(Hash.new(0)) { |w, h| h[w] += 1 }
  end

  private

  def from_phrase(phrase)
    phrase.scan(/\b[^\s,]+\b/).each { |w| w.downcase! }
  end
end
