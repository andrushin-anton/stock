class Rsi

  def calculate(data)
    last_two_weeks = data[0 .. 15]
    reversed = last_two_weeks.reverse
    # Среднее значение повышения цен закрытия за Х дней
    r = 0
    # Среднее значение понижения цен закрытия за Х дней
    p = 0
    for ind in 0 ... 15
      unless reversed[ind + 1].nil?
        dif = reversed[ind + 1].close - reversed[ind].close
        if dif > 0
          r = r + dif
        else
          p = p + dif.abs
        end
      end
    end

    # Calculate RS
    smaR = r / 14
    smaP = p / 14

    # Calculate RSI
    if smaP == 0
      rsi = 100
    else
      rs = smaR / smaP
      rsi = 100 - (100 / (1 + rs))
    end

    return rsi
  end

  def min(data)
    min_array = []
    for ind in 0 .. 45
      unless data[ind].nil?
        min_array << data[ind].low
      end
    end
    return min_array.min
  end
end