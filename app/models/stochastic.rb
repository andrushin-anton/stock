class Stochastic
  attr_accessor :k
  attr_accessor :d
  attr_accessor :min
  attr_accessor :max

  # %K = (CLOSE - MIN (LOW (%K))) / (MAX (HIGH (%K)) - MIN (LOW (%K))) * 100
  # %D = SMA (%K, N)
  # 5,3,3
  def calculate(data)
    min_array = []
    max_array = []
    current_close = data[0].close

    length = 14
    if data.length < length
      length = data.length
    end

    for index in 0 ... length
      min_array << data[index].low
      max_array << data[index].hight
    end

    @min = min_array.min
    @max = max_array.max


    @k = (100 * ((current_close - @min) / (@max - @min))).round(2)

    # вычисляем d
    # @d = calculate_d(data)
  end
end