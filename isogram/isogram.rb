class Isogram
  def self.isogram?(input)
    downcased = input.downcase

    downcased.scan(/\w/).none? { |char| downcased.count(char) > 1 }
  end
end
