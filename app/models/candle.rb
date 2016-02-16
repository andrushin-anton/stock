class Candle
  attr_accessor :is_buy
  attr_accessor :is_sell
  attr_accessor :open
  attr_accessor :close
  attr_accessor :high
  attr_accessor :low
  attr_accessor :volume
  attr_accessor :is_hammer
  attr_accessor :is_inverted_hammer
  attr_accessor :body
  attr_accessor :bottom_shadow
  attr_accessor :top_shadow
  attr_accessor :middle
  attr_accessor :is_doji
  attr_accessor :is_marubozu

  def initialize(quote)
    @open = quote.open
    @close = quote.close
    @high = quote.high
    @low = quote.low
    @volume = quote.volume
    @is_hammer = false
    @is_inverted_hammer = false
    @is_doji = false
    @is_marubozu = false

    direction()
    calculate_body()
    hammer()
    inverted_hammer()
    doji()
    marubozu()
  end

  private
    def direction
      if @close > @open
        @is_buy = true
        @is_sell = false
      elsif @close < @open
        @is_buy = false
        @is_sell = true
      else
        @is_buy = true
        @is_sell = true
      end
    end

    def calculate_body
      @middle = (@open + @close) / 2

      if @is_buy
        @body = @close - @open
        @bottom_shadow = @open - @low
        @top_shadow = @high - @close
      else
        @body = @open - @close
        @bottom_shadow = @close - @low
        @top_shadow = @high - @open
      end
    end

    def hammer
      #1. Тело находится в верхней части ценового диапазона. Цвет тела значения не имеет.
      #2. Нижняя тень в два раза длиннее тела.
      #3. У свечи нет верхней тени или она очень короткая.
      if @body >= 0.3
        if (@bottom_shadow >= (@body * 2))
          if (@top_shadow < @body)
            @is_hammer = true
          end
        end
      end
    end

    def inverted_hammer
      #1. Тело находится в нижней части ценового диапазона. Цвет тела значения не имеет.
      #2. Верхняя тень в два раза длиннее тела.
      #3. У свечи нет нижней тени или она очень короткая.
      if @body >= 0.3
        if (@top_shadow >= (@body * 2))
          if (@bottom_shadow < @body)
            @is_inverted_hammer = true
          end
        end
      end
    end

    def doji
      body = @body * 3
      if body == 0
        body = 0.06
      end

      if @is_sell
        if (@open <= @close + 0.05)
          if (@top_shadow > body) && (@bottom_shadow > body)
            @is_doji = true
          end
        end
      end
      if @is_buy
        if (@open >= @close - 0.05)
          if (@top_shadow > body) && (@bottom_shadow > body)
            @is_doji = true
          end
        end
      end
    end

    def marubozu
      if @is_sell
        if @low >= @close - 0.01 && @high <= @open + 0.01
          @is_marubozu = true
        end
      end
      if @is_sell
        if @low >= @open - 0.01 && @high <= @close + 0.01
          @is_marubozu = true
        end
      end
    end
end