# fronzen_string_literal: true

class ResistorColorDuo
  VALUES = {
    'black' => 0,
    'brown' => 1,
    'red' => 2,
    'orange' => 3,
    'yellow' => 4,
    'green' => 5,
    'blue' => 6,
    'violet' => 7,
    'grey' => 8,
    'white' => 9
  }.freeze

  def self.value(color_bands)
    color_bands.map { |color| VALUES[color] }.join.to_i
  end
end
