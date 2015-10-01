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
    # average_d = 0.0;
    # for day in 0 ... 3
    #   min_array = []
    #   max_array = []
    #   current_close = data[day].close
    #
    #   for index in 0 ... 5
    #     min_array << data[index].low
    #     max_array << data[index].hight
    #   end
    #
    #   average_d = average_d + ((current_close - min_array.min) / (max_array.max - min_array.min) * 100)
    # end
    #
    # @d = average_d / 3.0
  end
end