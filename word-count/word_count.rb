class Phrase
  def initialize(word)
    @word = word
  end

  def word_count
    frequency = Hash.new(0)
    @word.split(/(\w+'\w+)?(\w+)?(^\s)/)
         .map(&:strip)
         .reject(&:empty?)
         .each { |word| frequency[word.downcase] += 1 }
    frequency
  end
end
