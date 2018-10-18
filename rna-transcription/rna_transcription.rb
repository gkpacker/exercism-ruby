module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end

class Complement
  DNA = {
    C: "G",
    G: "C",
    T: "A",
    A: "U"
  }

  def self.of_dna(input)
    input.chars.map { |letter| DNA[letter.to_sym] }.join
  end
end
