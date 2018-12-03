require 'set'
require 'byebug'

class Robot
  LETTERS = ('A'..'Z').to_a
  MAX_NUMBER = (0..9)

  attr_reader :name

  def initialize
    Random.new(srand)
    @name = random_name
  end

  def reset
    initialize
  end

  def self.forget; end

  private

  def random_name
    letters = LETTERS.sample(2).join
    numbers = 3.times.map { rand(MAX_NUMBER) }.join

    "#{letters}#{numbers}"
  end
end
