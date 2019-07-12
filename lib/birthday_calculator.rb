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
    "Your birthday is in #{@month.to_i - month_now} months and #{@day.to_i - day_now} days"
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
