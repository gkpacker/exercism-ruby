module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

class Hamming
  def self.compute(dna, rna)
    raise ArgumentError.new("wrong input") unless dna.length == rna.length

    dna.chars.select.with_index { |letter, index| letter != rna.chars[index] }.count
  end
end
