class Pattern < ActiveRecord::Base
  require 'json'
  belongs_to :setup, :foreign_key => 'name', :primary_key => 'pattern'

  def MACD_STOCHASTIC(data, item)
    macd = Macd.new(data)
    stochastic = Stochastic.new
    moving_average = MovingAverage.new
    yesterday = data.drop(1)

    # puts '================'
    # puts item.name
    # puts 'sma 22:'
    # puts moving_average.sma(22, data)
    # puts 'ema 22:'
    # puts moving_average.ema(22, data)
    # puts 'macd(26,12,9)'
    # puts macd.value
    # puts 'signal'
    # puts macd.signal
    # puts 'stochastic'
    # stochastic.calculate(data)
    # puts stochastic.k

    last_candle = Candle.new(data[0])
    ema200 = moving_average.ema(200, data)
    stochastic.calculate(data)
    yesterday_macd = Macd.new(yesterday)
    yesterday_stochastic = Stochastic.new
    yesterday_stochastic.calculate(yesterday)

    # BUY
    # Buy to open stocks when all the following criteria are met,
    #
    # 1.The stock is greater than its 200-day Moving Average
    # 2.The MACD value crosses signal from bottom
    # 3.The Stochastic Oscillator is less than 50 and this reading is also heading higher

    # 1.The stock is greater than its 200-day Moving Average
    if last_candle.close >= ema200
      # 2.The MACD value crosses signal from bottom
      if (yesterday_macd.value < macd.value) && (yesterday_macd.signal > yesterday_macd.value) && (macd.value > macd.signal)
        # 3.The Stochastic Oscillator is less than 50 and this reading is also heading higher
        if yesterday_stochastic.k < 50
          levels = [{ :buy_stop => last_candle.close, :stop_loss => ema200 - 0.02, :macd => macd.value, :signal => macd.signal, :gistogram => macd.gistogram, :stochastic => stochastic.k, :ema200 => ema200 }].to_json
          save_setup(item,data,'MACD_STOCHASTIC','BUY Close short positions',levels)
        end
      end
    end

    # SELL
    # Sell to open stocks when all the following criteria are met,
    #
    # 1.The stock is less than its 200-day Moving Average
    # 2.The MACD value crosses signal from top
    # 3.The Stochastic Oscillator is greater than 50 and this reading is also heading lower

    # 1.The stock is less than its 200-day Moving Average
    if last_candle.close <= ema200
      # 2.The MACD value crosses signal from top
      if (yesterday_macd.value > macd.value) && (yesterday_macd.signal < yesterday_macd.value) && (macd.value < macd.signal)
        # 3.The Stochastic Oscillator is greater than 50 and this reading is also heading higher
        if yesterday_stochastic.k > 50
          levels = [{ :sell_stop => last_candle.close, :stop_loss => ema200 + 0.02, :macd => macd.value, :signal => macd.signal, :gistogram => macd.gistogram, :stochastic => stochastic.k, :ema200 => ema200 }].to_json
          save_setup(item,data,'MACD_STOCHASTIC','SELL Close long positions',levels)
        end
      end
    end
  end




  def MACD(data, item)
    last_candle = Candle.new(data[0])
    macd = Macd.new(data)
    yesterday_data = data.drop(1)
    yesterday_macd = Macd.new(yesterday_data)

    puts 'MACD'
    puts item.name
    puts data[0].date.to_s
    puts 'macd'
    puts macd.value
    puts 'signal'
    puts macd.signal
    puts '====================='

    # if yesterday_macd.value <= yesterday_macd.signal && macd.value >= macd.signal
    #   levels = [{ :buy_stop => last_candle.high + 0.02, :stop_loss => last_candle.low - 0.02 }].to_json
    #   save_setup(item,data,'MACD','BUY Close short positions',levels)
    # end
  end

  def STOCHASTIC(data, item)
    last_candle = Candle.new(data[0])

    stochastic = Stochastic.new(data)

    puts 'STOCHASTIC'
    puts item.name
    puts data[0].date.to_s
    puts '%K'
    puts stochastic.k
    puts '====================='

    # if yesterday_macd.value <= yesterday_macd.signal && macd.value >= macd.signal
    #   levels = [{ :buy_stop => last_candle.high + 0.02, :stop_loss => last_candle.low - 0.02 }].to_json
    #   save_setup(item,data,'MACD','BUY Close short positions',levels)
    # end
  end






























  def THREE_LINE_STRIKE_BULL(data, item)
    last_candle = Candle.new(data[0])
    prev_1_candle = Candle.new(data[1])
    prev_2_candle = Candle.new(data[2])
    prev_3_candle = Candle.new(data[3])

    # Если тенденция понижающаяся
    moving_average = MovingAverage.new(65, data)
    if moving_average.value >= last_candle.close
      if prev_1_candle.is_sell && prev_2_candle.is_sell && prev_3_candle.is_sell && last_candle.is_buy
        if last_candle.open <= prev_1_candle.close && last_candle.open <= prev_2_candle.close && last_candle.open <= prev_3_candle.close
          if last_candle.close >= prev_1_candle.open && last_candle.close >= prev_2_candle.open && last_candle.close >= prev_3_candle.open
            if prev_1_candle.close <= prev_2_candle.close && prev_2_candle.close <= prev_3_candle.close
              levels = [{ :buy_stop => last_candle.high + 0.02, :stop_loss => last_candle.low - 0.02 }].to_json
              save_setup(item,data,'THREE_LINE_STRIKE_BULL','BUY Close short positions',levels)
            end
          end
        end
      end
    end
  end

  def THREE_LINE_STRIKE_BEAR(data, item)
    last_candle = Candle.new(data[0])
    prev_1_candle = Candle.new(data[1])
    prev_2_candle = Candle.new(data[2])
    prev_3_candle = Candle.new(data[3])

    # Если тенденция повышающаяся
    moving_average = MovingAverage.new(65, data)
    if moving_average.value <= last_candle.close
      if prev_1_candle.is_buy && prev_2_candle.is_buy && prev_3_candle.is_buy && last_candle.is_sell
        if last_candle.open >= prev_1_candle.close && last_candle.open >= prev_2_candle.close && last_candle.open >= prev_3_candle.close
          if last_candle.close <= prev_1_candle.open && last_candle.close <= prev_2_candle.open && last_candle.close <= prev_3_candle.open
            if prev_1_candle.close >= prev_2_candle.close && prev_2_candle.close >= prev_3_candle.close
              levels = [{ :sell_stop => last_candle.low - 0.02, :stop_loss => last_candle.high + 0.02 }].to_json
              save_setup(item,data,'THREE_LINE_STRIKE_BEAR','SELL Close long positions',levels)
            end
          end
        end
      end
    end
  end

  def THREE_BLACK_CROWS(data, item)
    last_candle = Candle.new(data[0])
    prev_1_candle = Candle.new(data[1])
    prev_2_candle = Candle.new(data[2])
    prev_3_candle = Candle.new(data[3])

    # Если тенденция повышающаяся
    moving_average = MovingAverage.new(65, data)
    #if moving_average.value <= last_candle.close
      if prev_3_candle.is_buy && prev_1_candle.is_sell && prev_2_candle.is_sell && last_candle.is_sell
        if !prev_3_candle.is_doji && !prev_2_candle.is_doji && !prev_1_candle.is_doji
          if prev_2_candle.open <= prev_3_candle.close && prev_2_candle.open > prev_3_candle.open
            if prev_1_candle.open < prev_3_candle.close && prev_1_candle.open > prev_3_candle.open
              if last_candle.close < prev_1_candle.close && prev_1_candle.close < prev_2_candle.close
                levels = [{ :sell_stop => last_candle.low - 0.02, :stop_loss => last_candle.high + 0.02 }].to_json
                save_setup(item,data,'THREE_BLACK_CROWS','SELL Close long positions',levels)
              end
            end
          end
        end
      end
    #end
  end


























  def DOJI(data, item)
    prev_before_candle = Candle.new(data[2])
    prev_candle = Candle.new(data[1])
    last_candle = Candle.new(data[0])

    # Продолжение тенденции
    if last_candle.is_doji
      # Если тенденция понижающаяся
      moving_average = MovingAverage.new(65, data)
      if moving_average.value >= last_candle.close
        levels = [{ :sell_stop => last_candle.low - 0.02, :stop_loss => last_candle.high + 0.02 }].to_json
        save_setup(item,data,'DOJI','SELL Close long positions',levels)
      end
      # Если тенденция повыщающаяся
      moving_average = MovingAverage.new(65, data)
      if moving_average.value <= last_candle.close
        levels = [{ :buy_stop => last_candle.high + 0.02, :stop_loss => last_candle.low - 0.02 }].to_json
        save_setup(item,data,'DOJI','BUY Close short positions',levels)
      end
    end

    if prev_candle.is_doji
      # Если тенденция понижающаяся
      moving_average = MovingAverage.new(65, data)
      if moving_average.value >= prev_candle.close
        if prev_candle.low < prev_before_candle.low && prev_candle.low < last_candle.low
          if last_candle.is_buy
            levels = [{ :buy_stop => last_candle.high + 0.02, :stop_loss => last_candle.low - 0.02 }].to_json
            save_setup(item,data,'DOJI','BUY Close short positions',levels)
          end
        end
      end
      # Если тенденция повыщающаяся
      moving_average = MovingAverage.new(65, data)
      if moving_average.value <= prev_candle.close
        if prev_candle.high > prev_before_candle.high && prev_candle.high > last_candle.high
          if last_candle.is_sell
            levels = [{ :sell_stop => last_candle.low - 0.02, :stop_loss => last_candle.high + 0.02 }].to_json
            save_setup(item,data,'DOJI','SELL Close long positions',levels)
          end
        end
      end
    end
  end

  def DARK_CLOUD_COVER(data, item)
    last_candle = Candle.new(data[0])
    prev_candle = Candle.new(data[1])
    moving_average = MovingAverage.new(65, data)

    # # Если тенденция восходящая
    # if moving_average.value <= last_candle.close
    #   if last_candle.is_sell && prev_candle.is_buy
    #     if last_candle.open > prev_candle.high && prev_candle.open < last_candle.close
    #       if last_candle.close <= prev_candle.middle
    #         levels = [{ :sell_stop => last_candle.low - 0.02, :stop_loss => last_candle.high + 0.02 }].to_json
    #         save_setup(item,data,'DARK_CLOUD_COVER','Sell Close long positions',levels)
    #       end
    #     end
    #   end
    # end
  end

  def PIERCING(data, item)
    last_candle = Candle.new(data[0])
    prev_candle = Candle.new(data[1])
    moving_average = MovingAverage.new(65, data)

    # Если тенденция нисходящая
    # if moving_average.value >= last_candle.close
    #   if last_candle.is_buy && prev_candle.is_sell
    #     if last_candle.open < prev_candle.low && prev_candle.open > last_candle.close
    #       if last_candle.close >= prev_candle.middle
    #         levels = [{ :buy_stop => last_candle.high + 0.02, :stop_loss => last_candle.low - 0.02 }].to_json
    #         save_setup(item,data,'PIERCING','Buy Close short positions',levels)
    #       end
    #     end
    #   end
    # end
  end

  def HAMMER(data, item)
    prev_candle = Candle.new(data[1])
    last_candle = Candle.new(data[0])
    if prev_candle.is_hammer
      moving_average = MovingAverage.new(65, data)

      # Если тенденция понижающаяся
      if moving_average.value >= last_candle.close
        # Если есть свеча подтверждения
        if last_candle.close > prev_candle.close && last_candle.is_buy
          levels = [{ :buy_stop => last_candle.high + 0.02, :stop_loss => prev_candle.low - 0.02 }].to_json
          save_setup(item,data,'HAMMER','Buy Close short positions',levels)
        end
      end
      # Если тенденция повышающаяся
      if moving_average.value <= last_candle.close
        # Если есть свеча подтверждения
        if last_candle.close > prev_candle.close && last_candle.is_buy
          levels = [{ :buy_stop => last_candle.high + 0.02, :stop_loss => prev_candle.low - 0.02 }].to_json
          save_setup(item,data,'HAMMER','Buy',levels)
        end
      end
    end
  end

  def HANGING_MAN(data, item)
    prev_candle = Candle.new(data[1])
    last_candle = Candle.new(data[0])
    if prev_candle.is_hammer
      # Если тенденция восходящая
      moving_average = MovingAverage.new(65, data)
      if moving_average.value <= prev_candle.close
        # Если есть свеча подтверждения
        if last_candle.close <= prev_candle.close && last_candle.is_sell
          levels = [{ :sell_stop => last_candle.low - 0.02, :stop_loss => prev_candle.high + 0.02 }].to_json
          save_setup(item,data,'HANGING_MAN','Sell Close long positions',levels)
        end
      end
    end
  end

  def SHOOTING_STAR(data, item)
    last_candle = Candle.new(data[0])
    prev_candle = Candle.new(data[1])
    prev_before_candle = Candle.new(data[2])
    moving_average = MovingAverage.new(65, data)

    # Если тенденция восходящая
    if moving_average.value <= last_candle.close
      if prev_before_candle.high < prev_candle.high && last_candle.high <= prev_candle.high
        if prev_candle.is_inverted_hammer
          levels = [{ :sell_stop => last_candle.low - 0.02, :stop_loss => prev_candle.high + 0.02 }].to_json
          save_setup(item,data,'SHOOTING_STAR','Sell Close long positions',levels)
        end
      end
    end
    # Если тенденция нисходящая
    if moving_average.value >= last_candle.close
      if last_candle.is_inverted_hammer
        levels = [{ :sell_stop => last_candle.low - 0.02, :stop_loss => prev_candle.high + 0.02 }].to_json
        save_setup(item,data,'SHOOTING_STAR','Sell Close long positions',levels)
      end
    end
  end

  def INVERTED_HAMMER(data, item)
    last_candle = Candle.new(data[0])
    prev_candle = Candle.new(data[1])
    prev_before_candle = Candle.new(data[2])
    # Если тенденция нисходящая
    moving_average = MovingAverage.new(65, data)
    if moving_average.value >= last_candle.close
      if prev_before_candle.low > prev_candle.low && last_candle.low >= prev_candle.low
        if prev_candle.is_inverted_hammer
          levels = [{ :buy_stop => last_candle.high + 0.02, :stop_loss => prev_candle.low - 0.02 }].to_json
          save_setup(item,data,'INVERTED_HAMMER','Close short positions',levels)
        end
      end
    end
  end

  def MORNING_STAR(data, item)
    last_candle = Candle.new(data[0])
    prev_candle = Candle.new(data[1])
    prev_before_candle = Candle.new(data[2])

    if prev_before_candle.is_sell && last_candle.is_buy
      if prev_candle.open < prev_before_candle.close && prev_candle.close < prev_before_candle.close && last_candle.low >= prev_candle.low
        if (prev_candle.body * 2) < prev_before_candle.body
          if last_candle.close >= prev_before_candle.middle
            levels = [{ :buy_stop => last_candle.high + 0.02, :stop_loss => prev_candle.low - 0.02 }].to_json
            save_setup(item,data,'MORNING_STAR','Buy Close short positions',levels)
          end
        end
      end
    end
  end

  def EVENING_STAR(data, item)
    last_candle = Candle.new(data[0])
    prev_candle = Candle.new(data[1])
    prev_before_candle = Candle.new(data[2])

    if prev_before_candle.is_buy && last_candle.is_sell
      if prev_candle.open > prev_before_candle.close && prev_candle.close > prev_before_candle.close && last_candle.high <= prev_candle.high
        if (prev_candle.body * 2) < prev_before_candle.body
          if last_candle.close <= prev_before_candle.middle
            levels = [{ :sell_stop => last_candle.low - 0.02, :stop_loss => last_candle.high + 0.02 }].to_json
            save_setup(item,data,'EVENING_STAR','Sell Close long positions',levels)
          end
        end
      end
    end
  end

  def HARAMI(data, item)
    last_candle = Candle.new(data[0])
    prev_candle = Candle.new(data[1])
    moving_average = MovingAverage.new(65, data)
    # # Если тенденция нисходящая
    # if moving_average.value >= last_candle.close
    #   if prev_candle.is_buy && prev_candle.open < last_candle.close && prev_candle.open < last_candle.open && prev_candle.close > last_candle.close && prev_candle.close > last_candle.open
    #     levels = [{ :sell_stop => last_candle.low - 0.02, :stop_loss => last_candle.high + 0.02 }].to_json
    #     save_setup(item,data,'HARAMI','SELL',levels)
    #   end
    # end
    # # Если тенденция восходящая
    # if moving_average.value <= last_candle.close
    #   if prev_candle.is_sell && prev_candle.open > last_candle.close && prev_candle.open > last_candle.open && prev_candle.close < last_candle.close && prev_candle.close < last_candle.open
    #     levels = [{ :buy_stop => last_candle.high + 0.02, :stop_loss => last_candle.low - 0.02 }].to_json
    #     save_setup(item,data,'HARAMI','BUY',levels)
    #   end
    # end
  end

  def ENGULFING(data, item)
    last_candle = Candle.new(data[0])
    prev_candle = Candle.new(data[1])
    prev_before_candle = Candle.new(data[2])
    moving_average = MovingAverage.new(65, data)

    # Если тенденция нисходящая
    if moving_average.value >= last_candle.close
      # Close short positions
      # if last_candle.is_buy && prev_candle.is_sell
      #   if last_candle.open < prev_candle.close && last_candle.close > prev_candle.open
      #     if last_candle.volume > prev_candle.volume
      #       if last_candle.low < prev_candle.low && prev_candle.low < prev_before_candle.low
      #         levels = [{ :buy_stop => last_candle.high + 0.02, :stop_loss => last_candle.low - 0.02 }].to_json
      #         save_setup(item,data,'ENGULFING','Buy Close short positions',levels)
      #       end
      #     end
      #   end
      # end
      # Open short position
      # if last_candle.is_sell && prev_candle.is_buy
      #   if last_candle.open > prev_candle.close && last_candle.close < prev_candle.open
      #     if last_candle.volume > prev_candle.volume
      #       if last_candle.high > prev_candle.high && prev_candle.high > prev_before_candle.high
      #         levels = [{ :sell_stop => last_candle.low - 0.02, :stop_loss => last_candle.high + 0.02 }].to_json
      #         save_setup(item,data,'ENGULFING','Sell',levels)
      #       end
      #     end
      #   end
      # end
    end
    # Если тенденция восходящая
    if moving_average.value <= last_candle.close
      # Close long positions
      # if last_candle.is_sell && prev_candle.is_buy
      #   if last_candle.open > prev_candle.close && last_candle.close < prev_candle.open
      #     if last_candle.volume > prev_candle.volume
      #       if last_candle.high > prev_candle.high && prev_candle.high > prev_before_candle.high
      #         levels = [{ :sell_stop => last_candle.low - 0.02, :stop_loss => last_candle.high + 0.02 }].to_json
      #         save_setup(item,data,'ENGULFING','Sell Close long positions',levels)
      #       end
      #     end
      #   end
      # end
      # Open long positions
      # if last_candle.is_buy && prev_candle.is_sell
      #   if last_candle.open < prev_candle.close && last_candle.close > prev_candle.open
      #     if last_candle.volume > prev_candle.volume
      #       if last_candle.low < prev_candle.low && prev_candle.low < prev_before_candle.low
      #         levels = [{ :buy_stop => last_candle.high + 0.02, :stop_loss => last_candle.low - 0.02 }].to_json
      #         save_setup(item,data,'ENGULFING','Buy',levels)
      #       end
      #     end
      #   end
      # end
    end
  end














  # 1. На рынке должна быть ярко выражена нисходя­щая тенденция
  # 2. Модель поглощения образуется двумя свечами. Второе тело должно поглотить первое (тени могут и не поглощаться).
  # 3. Второе тело должно быть контрастным по цвету. (Исключение из этого правила бывает лишь в том случае, когда тело первой свечи в модели поглощения настолько мало, что эта свеча сравнима с дожи (или является дожи). Таким образом, если после продолжительной нисходящей тенденции крохотное белое тело поглощается очень большим белым телом, это может служить сигналом разворота в основании. А поглощение крохотного черного тела при восходящей тенденции очень большим черным телом можно считать моделью разворота на вершине.)
  def ENGULFING_RISING(data, item)
    last_candle = Candle.new(data[0])
    prev_candle = Candle.new(data[1])
    # Если тенденция нисходящая
    moving_average = MovingAverage.new(65, data)
    if moving_average.value >= last_candle.close
      #TODO: or prev_candle.is_doji
      if last_candle.is_buy && prev_candle.is_sell
        if last_candle.open < prev_candle.close && last_candle.close > prev_candle.open
          levels = [{ :stop_loss => last_candle.high + 0.02 }].to_json
          save_setup(item,data,'ENGULFING_RISING','Close short positions',levels)
        end
      end
    end
  end

  # 1. На рынке должна быть ярко выражена восходящая тенденция
  # 2. Модель поглощения образуется двумя свечами. Второе тело должно поглотить первое (тени могут и не поглощаться).
  # 3. Второе тело должно быть контрастным по цвету. (Исключение из этого правила бывает лишь в том случае, когда тело первой свечи в модели поглощения настолько мало, что эта свеча сравнима с дожи (или является дожи). Таким образом, если после продолжительной нисходящей тенденции крохотное белое тело поглощается очень большим белым телом, это может служить сигналом разворота в основании. А поглощение крохотного черного тела при восходящей тенденции очень большим черным телом можно считать моделью разворота на вершине.)
  def ENGULFING_FALL(data, item)
    last_candle = Candle.new(data[0])
    prev_candle = Candle.new(data[1])
    # Если тенденция восходящая
    moving_average = MovingAverage.new(65, data)
    if moving_average.value <= last_candle.close
      #TODO: or prev_candle.is_doji
      if last_candle.is_sell && prev_candle.is_buy
        if last_candle.open > prev_candle.close && last_candle.close < prev_candle.open
          levels = [{ :stop_loss => last_candle.low - 0.02 }].to_json
          save_setup(item,data,'ENGULFING_FALL','Close long positions',levels)
        end
      end
    end
  end


  def TWEEZERS_TOP(data, item)
    last_candle = Candle.new(data[0])
    prev_candle = Candle.new(data[1])
    # Если тенденция восходящая
    moving_average = MovingAverage.new(65, data)
    if moving_average.value <= last_candle.close
      if prev_candle.high == last_candle.high
        levels = [{ :stop_loss => last_candle.low - 0.02 }].to_json
        save_setup(item,data,'TWEEZERS_TOP','Close long positions',levels)
      end
    end
  end

  def TWEEZERS_BOTTOM(data, item)
    last_candle = Candle.new(data[0])
    prev_candle = Candle.new(data[1])
    # Если тенденция нисходящая
    moving_average = MovingAverage.new(65, data)
    if moving_average.value >= last_candle.close
      if prev_candle.low == last_candle.low
        levels = [{ :stop_loss => last_candle.high + 0.02 }].to_json
        save_setup(item,data,'TWEEZERS_BOTTOM','Close short positions',levels)
      end
    end
  end

  def BELT_HOLD_TOP(data, item)
    last_candle = Candle.new(data[0])
    prev_candle = Candle.new(data[1])
    # Если тенденция восходящая
    moving_average = MovingAverage.new(65, data)
    if moving_average.value <= last_candle.close
      if prev_candle.high < last_candle.high
        if last_candle.is_sell
          if last_candle.high == last_candle.open
            levels = [{ :stop_loss => last_candle.low - 0.02 }].to_json
            save_setup(item,data,'BELT_HOLD_TOP','Close long positions',levels)
          end
        end
      end
    end
  end

  def BELT_HOLD_BOTTOM(data, item)
    last_candle = Candle.new(data[0])
    prev_candle = Candle.new(data[1])
    # Если тенденция нисходящая
    moving_average = MovingAverage.new(65, data)
    if moving_average.value >= last_candle.close
      if prev_candle.low > last_candle.low
        if last_candle.is_buy
          if last_candle.low == last_candle.open
            levels = [{ :stop_loss => last_candle.high + 0.02 }].to_json
            save_setup(item,data,'BELT_HOLD_BOTTOM','Close short positions',levels)
          end
        end
      end
    end
  end

  def COUNTER_ATTACK_TOP(data, item)
    last_candle = Candle.new(data[0])
    prev_candle = Candle.new(data[1])
    # Если тенденция восходящая
    moving_average = MovingAverage.new(65, data)
    if moving_average.value <= last_candle.close
      if prev_candle.is_buy
        if last_candle.is_sell
          if last_candle.close == prev_candle.close
            levels = [{ :stop_loss => last_candle.close - 0.02 }].to_json
            save_setup(item,data,'COUNTER_ATTACK_TOP','Close long positions',levels)
          end
        end
      end
    end
  end

  def COUNTER_ATTACK_BOTTOM(data, item)
    last_candle = Candle.new(data[0])
    prev_candle = Candle.new(data[1])
    # Если тенденция нисходящая
    moving_average = MovingAverage.new(65, data)
    if moving_average.value >= last_candle.close
      if prev_candle.is_sell
        if last_candle.is_buy
          if last_candle.close == prev_candle.close
            levels = [{ :stop_loss => last_candle.close + 0.02 }].to_json
            save_setup(item,data,'COUNTER_ATTACK_BOTTOM','Close short positions',levels)
          end
        end
      end
    end
  end


  # Модели продолжения
  def WINDOW_BUY(data, item)
    last_candle = Candle.new(data[0])
    prev_candle = Candle.new(data[1])
    # Если тенденция восходящая
    moving_average = MovingAverage.new(65, data)
    if moving_average.value <= last_candle.close
      if prev_candle.high < (last_candle.low - 0.05)
        levels = [{ :buy_stop => last_candle.high + 0.02, :stop_loss => prev_candle.high - 0.05 }].to_json
        save_setup(item,data,'WINDOW_BUY','BUY',levels)
      end
    end
  end

  def WINDOW_SELL(data, item)
    last_candle = Candle.new(data[0])
    prev_candle = Candle.new(data[1])
    # Если тенденция нисходящая
    moving_average = MovingAverage.new(65, data)
    if moving_average.value >= last_candle.close
      if prev_candle.low > (last_candle.high + 0.05)
        levels = [{ :sell_stop => last_candle.low - 0.02, :stop_loss => prev_candle.low + 0.05 }].to_json
        save_setup(item,data,'WINDOW_SELL','SELL',levels)
      end
    end
  end

  def TASUKI_BUY(data, item)
    last_candle = Candle.new(data[0])
    prev_candle = Candle.new(data[1])
    prev_before_candle = Candle.new(data[2])
    # Если тенденция восходящая
    moving_average = MovingAverage.new(65, data)
    if moving_average.value <= prev_candle.close
      if prev_before_candle.high < (prev_candle.low - 0.05)
        if last_candle.is_sell && prev_candle.is_buy
          if (prev_candle.close > last_candle.open) && (prev_candle.open < last_candle.open) && prev_candle.open > last_candle.close
            levels = [{ :buy_stop => last_candle.close, :stop_loss => prev_before_candle.high - 0.05 }].to_json
            save_setup(item,data,'TASUKI_BUY','BUY',levels)
          end
        end
      end
    end
  end

  def TASUKI_SELL(data, item)
    last_candle = Candle.new(data[0])
    prev_candle = Candle.new(data[1])
    prev_before_candle = Candle.new(data[2])
    # Если тенденция нисходящая
    moving_average = MovingAverage.new(65, data)
    if moving_average.value >= last_candle.close
      if prev_before_candle.low > (prev_candle.high + 0.05)
        if last_candle.is_buy && prev_candle.is_sell
          if (last_candle.open > prev_candle.close) && (last_candle.open < prev_candle.open) && (last_candle.close > prev_candle.open)
            levels = [{ :sell_stop => last_candle.close, :stop_loss => prev_before_candle.low + 0.05 }].to_json
            save_setup(item,data,'TASUKI_SELL','SELL',levels)
          end
        end
      end
    end
  end

  private
    def save_setup(item, data, pattern, direction, levels)
      unless Setup.where(:datetime => data[0].date + 1.day, :symbol => item.symbol, :pattern => pattern).first
        setup = Setup.new
        setup.name = item.name
        setup.slug = (data[0].date + 1.day).strftime('%Y-%m-%d') + '-' + item.name.parameterize + '-' + pattern
        setup.symbol = item.symbol
        setup.datetime = data[0].date + 1.day
        setup.pattern = pattern
        setup.direction = direction
        setup.levels = levels
        setup.price = data[0].close
        setup.save
      end
    end
end
