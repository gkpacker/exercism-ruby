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

  private

  def self.verse(verse_number)
    gifts = gifts(verse_number)

    "On the #{day(verse_number)} day of Christmas my true love gave to me: #{to_sentence(gifts)}.\n"
  end

  def self.day(verse_number)
    GIFTS.keys[verse_number - 1]
  end

  def self.gifts(verse_number)
    GIFTS.values[0..verse_number - 1].reverse
  end

  def self.to_sentence(array)
    *gifts, last_gift = array

    gifts.empty? ? last_gift : "#{gifts.join(', ')}, and #{last_gift}"
  end
end
