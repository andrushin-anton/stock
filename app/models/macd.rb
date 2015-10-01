class Macd
  attr_accessor :value
  attr_accessor :signal
  attr_accessor :gistogram

  # 1)   MACD = ЕМАs(P) - EMAl(P)
  # 2)   Signal = EМАa(ЕМАs(P) - EMAl(P))   (сигнальная линия)
  # Гистограмма разности = (1) - (2)      (столбики штриховки на рисунке справа-вверху)

  def initialize(data)
    mv = MovingAverage.new
    ema12 = mv.ema(12, data)

    mv = MovingAverage.new
    ema26 = mv.ema(26, data)

    # current day MACD
    @value = (ema12 - ema26).round(2)

    # вычисляем сигнальную
    macd_array = [];
    current_day_array = data
    for index in 1 ... 11
      mv = MovingAverage.new
      ema12 = mv.ema(12, current_day_array)
      mv = MovingAverage.new
      ema26 = mv.ema(26, current_day_array)
      current_day_array = data.drop(index)

      # current day MACD
      price = Price.new(:close => (ema12 - ema26))
      macd_array << price
    end
    @signal = mv.ema(9, macd_array)

    @gistogram = (@value - @signal).round(2)
  end
end