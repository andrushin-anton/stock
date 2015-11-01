class Pattern < ActiveRecord::Base
  require 'json'
  belongs_to :setup, :foreign_key => 'name', :primary_key => 'pattern'

  def M_S(data, item)
    macd = Macd.new(data)
    moving_average = MovingAverage.new
    yesterday = data.drop(1)
    yesterday2 = data.drop(2)
    last_candle = Candle.new(data[0])
    yesterday_macd = Macd.new(yesterday)

    sma200 = moving_average.sma(200, data)

    stochastic = Stochastic.new
    stochastic.calculate(data)

    yesterday_stochastic = Stochastic.new
    yesterday_stochastic.calculate(yesterday)

    yesterday2_stochastic = Stochastic.new
    yesterday2_stochastic.calculate(yesterday2)

    # BUY
    # Buy to open stocks when all the following criteria are met,
    #
    # 1.The stock is greater than its 200-day Moving Average
    # 2.The MACD value crosses signal from bottom
    # 3.The Stochastic Oscillator is less than 50 and this reading is also heading higher

    # 1.The stock is greater than its 200-day Moving Average
    if last_candle.close >= sma200
      # 2.The MACD value crosses signal from bottom
      if (macd.gistogram > 0.0) && (yesterday_macd.value < macd.value) && (yesterday_macd.signal > yesterday_macd.value) && (macd.value > macd.signal)
        # 3.The Stochastic Oscillator is less than 50 and this reading is also heading higher
        #if yesterday_stochastic.k <= 40.0
          stop_loss = stochastic.min
          take_profit = last_candle.high + (last_candle.high * 0.08)
          levels = [{ :take_profit => take_profit, :buy_stop => last_candle.high + 0.02, :stop_loss => stop_loss - 0.02, :yesterday_stochastic_d => yesterday_stochastic.d, :stochastic_d => stochastic.d, :yesterday_stochastic_k => yesterday_stochastic.k, :stochastic_k => stochastic.k, :sma200 => sma200 }].to_json
          # Calculate rating
          profit = take_profit - (last_candle.high + 0.02)
          risk = (last_candle.high + 0.02) - (stop_loss - 0.02)
          rating = profit / risk
          # Save setup
          if rating >= 1.5
            save_setup(item,data,'M_S','BUY',levels, rating)
          end
        #end
      end
    end

    # SELL
    # Sell to open stocks when all the following criteria are met,
    #
    # 1.The stock is less than its 200-day Moving Average
    # 2.The MACD value crosses signal from top
    # 3.The Stochastic Oscillator is greater than 50 and this reading is also heading lower

    # 1.The stock is less than its 200-day Moving Average
    # if last_candle.close <= sma200
    #   # 2.The MACD value crosses signal from top
    #   if (yesterday_macd.value > macd.value) && (yesterday_macd.signal < yesterday_macd.value) && (macd.value < macd.signal)
    #     # 3.The Stochastic Oscillator is greater than 50 and this reading is also heading higher
    #     if yesterday_stochastic.k > 50
    #       stop_loss = stochastic.max
    #       take_profit = last_candle.low - (last_candle.low * 0.15)
    #       levels = [{ :take_profit => take_profit, :sell_stop => last_candle.low - 0.02, :stop_loss => stop_loss + 0.02, :macd => macd.value, :signal => macd.signal, :gistogram => macd.gistogram, :stochastic => stochastic.k, :sma200 => sma200 }].to_json
    #       save_setup(item,data,'MACD_STOCHASTIC','SELL',levels)
    #     end
    #   end
    # end
  end

  def MACD_STOCH(data, item)
    macd = Macd.new(data)
    moving_average = MovingAverage.new
    yesterday = data.drop(1)
    yesterday2 = data.drop(2)
    last_candle = Candle.new(data[0])
    yesterday_macd = Macd.new(yesterday)

    sma200 = moving_average.sma(200, data)

    stochastic = Stochastic.new
    stochastic.calculate(data)

    yesterday_stochastic = Stochastic.new
    yesterday_stochastic.calculate(yesterday)

    yesterday2_stochastic = Stochastic.new
    yesterday2_stochastic.calculate(yesterday2)

    stoch_d = (stochastic.k + yesterday_stochastic.k + yesterday2_stochastic.k) / 3.0



    # 1.The stock is greater than its 200-day Moving Average
    if (last_candle.close + last_candle.body) >= sma200
      # 2.The MACD value crosses signal from bottom
      if (yesterday_macd.value < macd.value) && (yesterday_macd.signal > yesterday_macd.value) && (macd.value > macd.signal)
        # 3.The Stochastic Oscillator is less than 50 and this reading is also heading higher
        if stoch_d <= 30.0
          stop_loss = stochastic.min
          take_profit = last_candle.high + (last_candle.high * 0.08)
          levels = [{ :take_profit => take_profit, :buy_stop => last_candle.high + 0.02, :stop_loss => stop_loss - 0.02, :yesterday_stochastic_d => yesterday_stochastic.d, :stochastic_d => stochastic.d, :yesterday_stochastic_k => yesterday_stochastic.k, :stochastic_k => stochastic.k, :sma200 => sma200 }].to_json
          # Calculate rating
          profit = take_profit - (last_candle.high + 0.02)
          risk = (last_candle.high + 0.02) - (stop_loss - 0.02)
          rating = profit / risk
          # Save setup
          puts 'found!'
          save_setup(item,data,'M_S','BUY',levels, rating)
        end
      end
    end
  end


  def MA(data, item)
    last = data
    yesterday = data.drop(1)
    last_candle = Candle.new(last[0])
    moving_average = MovingAverage.new
    # today
    sma100 = moving_average.sma(100, data)
    sma150 = moving_average.sma(150, data)
    sma200 = moving_average.sma(200, data)
    sma300 = moving_average.sma(300, data)
    # yesterday
    y_sma100 = moving_average.sma(100, yesterday)
    y_sma150 = moving_average.sma(150, yesterday)
    # stochastic
    stochastic = Stochastic.new
    stochastic.calculate(data)
    # macd
    macd = Macd.new(data)
    yesterday_macd = Macd.new(yesterday)

    # Find sma cross and save in notes
    # if yesterday sma100 <= sma150 and today sma100 > sma150
    if (y_sma100 <= y_sma150) && (sma100 > sma150)
      # if sma150 >= sma200 and sma200 >= sma300
      if (sma150 >= sma200) && (sma200 >= sma300)
        # if last close price > sma300
        if (last_candle.close > sma300)
          # Save note
          save_note(item, data, 'MA')
        end
      end
    end

    # if sma100 > sma150 and sma150 > sma200 and sma200 > sma300
    if (sma100 > sma150) && (sma150 > sma200) && (sma200 > sma300)
      # if last close price > sma150
      if (last_candle.close > sma150)
        # The MACD value crosses signal from bottom
        if (yesterday_macd.value < macd.value) && (yesterday_macd.signal > yesterday_macd.value) && (macd.value > macd.signal)
          if Note.where('datetime >= ? and symbol = ? AND pattern = ?', Time.at(data[0].date - 31.days).to_datetime, item.symbol, 'MA').first
            stop_loss = stochastic.min
            take_profit = last_candle.high + (last_candle.high * 0.2)
            levels = [{ :take_profit => take_profit, :buy_stop => last_candle.high + 0.02, :stop_loss => stop_loss - 0.02 }].to_json
            # Calculate rating
            profit = take_profit - (last_candle.high + 0.02)
            risk = (last_candle.high + 0.02) - (stop_loss - 0.02)
            rating = profit / risk
            # if rating >= 1.5 - save
            #if rating >= 1.5
              # Save setup
              save_setup(item,data,'MA','BUY',levels, rating)
            #end
          end
        end
      end
    end
  end

  private
    def save_setup(item, data, pattern, direction, levels, rating)
      unless Setup.where(:datetime => data[0].date, :symbol => item.symbol, :pattern => pattern).first
        setup = Setup.new
        setup.name = item.name
        setup.slug = data[0].date.strftime('%Y-%m-%d') + '-' + item.name.parameterize + '-' + pattern
        setup.symbol = item.symbol
        setup.datetime = data[0].date
        setup.pattern = pattern
        setup.direction = direction
        setup.levels = levels
        setup.price = data[0].close
        setup.rating = rating
        setup.save
      end
    end

    def save_note(item, data, pattern)
      unless Note.where(:datetime => data[0].date, :symbol => item.symbol, :pattern => pattern).first
        note = Note.new
        note.symbol = item.symbol
        note.datetime = data[0].date
        note.pattern = pattern
        note.save
      end
    end
end
