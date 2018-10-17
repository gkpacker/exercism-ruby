class Clock
  attr_accessor :hour, :minute

  MAX_HOURS = 24
  MAX_MINUTES = 60

  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute
  end

  def +(other)
    @hour += other.hour
    @minute += other.minute
    self
  end

  def -(other)
    @hour -= other.hour
    @minute -= other.minute
    self
  end

  def ==(other)
    to_s == other.to_s
  end

  def to_s
    prepare
    '%02d:%02d' % [hour, minute]
  end

  private

  def prepare
    minutes
    hours
  end

  def minutes
    hours_to_sum = @minute.divmod(MAX_MINUTES).first
    remaining_minutes = @minute.divmod(MAX_MINUTES).last
    @minute = remaining_minutes
    @hour += hours_to_sum
  end

  def hours
    remaining_hours = @hour.divmod(MAX_HOURS).last
    @hour = remaining_hours
  end
end
