module BookKeeping
  VERSION = 6 # Where the version number matches the one in the test.
end

class Gigasecond
  def self.from(time_utc)
    year_gigasecond = time_utc.to_i + (10**9)

    Time.at(year_gigasecond).utc
  end
end
