module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end

class Bob
  def self.hey(sentence)
    cleaned_sentence = sentence.strip
    if yell?(cleaned_sentence) && question?(cleaned_sentence)
      "Calm down, I know what I'm doing!"
    elsif yell?(cleaned_sentence)
      'Whoa, chill out!'
    elsif question?(cleaned_sentence)
      'Sure.'
    elsif cleaned_sentence.empty?
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end

  private

  def self.question?(sentence)
    sentence[-1] == '?'
  end

  def self.yell?(sentence)
    sentence == sentence.upcase if sentence =~ /\D[A-Z]+/
  end
end
