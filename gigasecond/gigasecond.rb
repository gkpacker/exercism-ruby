module BookKeeping
  VERSION = 6 # Where the version number matches the one in the test.
end

class Gigasecond
  def self.from(time_utc)
    seconds = time_utc.to_i
    year_gigasecond = seconds + (10**9)
    time = Time.at(year_gigasecond)
    Time.at(time).utc
  end
end
