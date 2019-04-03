require 'pry'

class TwelveDays
  GIFTS = {
    first: "a Partridge in a Pear Tree",
    second: "two Turtle Doves",
    third: "three French Hens",
    fourth: "four Calling Birds",
    fifth: "five Gold Rings",
    sixth: "six Geese-a-Laying",
    seventh: "seven Swans-a-Swimming",
    eighth: "eight Maids-a-Milking",
    ninth: "nine Ladies Dancing",
    tenth: "ten Lords-a-Leaping",
    eleventh: "eleven Pipers Piping",
    twelfth: "twelve Drummers Drumming"
  }

  def self.song
    (1..GIFTS.size).map { |n| verse(n) }.join("\n")
  end

  def self.verse(verse_number)
    index = verse_number - 1
    gifts = GIFTS.values[0..index].reverse
    last_gift = gifts.pop
    gifts_sentence = gifts.empty? ? last_gift : "#{gifts.join(', ')}, and #{last_gift}"

    "On the #{GIFTS.keys[index]} day of Christmas my true love gave to me: #{gifts_sentence}.\n"
  end
end
