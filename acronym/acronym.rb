class Acronym
  def self.abbreviate(sentence)
    sentence.upcase.split(/[\s, -]/).map(&:chr).join
  end
end
