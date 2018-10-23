class Isogram
  def self.isogram?(input)
    counter = Hash.new(0)
    input.downcase.scan(/\w/).each do |char|
      counter[char] += 1
      return false if counter[char] > 1
    end
  end
end
