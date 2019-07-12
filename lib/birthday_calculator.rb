class BirthdayCalculator
  def initialize(name, day, month)
    @name = name
    @day = day
    @month = month
  end

  def today?
    @day == day_now && @month == month_now
  end

  def print
    "Happy Birthday #{@name}!"
  end

  def time_left
    "Your birthday is in #{@day - day_now} days and #{@month - month_now} months"
  end

  private

  def day_now
    time = Time.new
    time.day
  end

  def month_now
    time = Time.new
    time.month
  end
end
