class MovingAverage

  def sma(days, quotes)
    if quotes.length < days
      days_for_loop = quotes.length
    else
      days_for_loop = days
    end

    average_sum = 0.0;
    for index in 0 ... days_for_loop
      average_sum = average_sum + quotes[index].close
    end
    return (average_sum / days_for_loop).round(2)
  end

  def ema(days, quotes)
    yesterday_ema = 0.0
    reversed_quotes = quotes.reverse

    for index in 0 ... reversed_quotes.length
      if index == 0
        yesterday_ema = sma(days, quotes.drop(1))
      end
      yesterday_ema = calculateEMA(reversed_quotes[index].close, days, yesterday_ema)
    end
    return yesterday_ema
  end

  def calculateEMA(today_price, number_of_days, ema_yesterday)
    k = 2.0 / (number_of_days.to_f + 1.0)
    return (today_price * k + ema_yesterday * (1.0 - k)).round(2)
  end
end