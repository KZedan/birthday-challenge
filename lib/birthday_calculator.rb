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

  private

  def day_now
    time = time.new
    time.day
  end

  def month_now
    time = time.new
    time.month
  end
end
