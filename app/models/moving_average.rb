class MovingAverage
  attr_accessor :value

  def initialize(days, quotes)
    if quotes.length < (days - 1)
      raise 'There is not enough data passed to the MovingAverage'
    end
    average_sum = 0;
    for index in 0 ... (days - 1)
      average_sum = average_sum + quotes[index].close
    end
    @value = average_sum / days
  end
end