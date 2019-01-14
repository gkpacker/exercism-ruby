class TwelveDays
  SONG_FILE = './song.txt'

  def self.song
    song = File.read(SONG_FILE)

    song.each_line { |line| puts line }
  end
end
