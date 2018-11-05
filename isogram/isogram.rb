class Isogram
  def self.isogram?(input)
    input.downcase!
    letters = input.scan(/\w/)

    letters.none? { |char| input.count(char) > 1 }
  end
end
