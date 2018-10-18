module BookKeeping
  VERSION = 6 # Where the version number matches the one in the test.
end

class Pangram
  def self.pangram?(phrase)
    scanned = phrase.downcase.scan(/[a-z]/)
    return false if scanned.empty?
    range = ('a'..'z').to_a

    range.count { |letter| scanned.include?(letter) } == range.size
  end
end
