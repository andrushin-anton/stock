class Pattern < ActiveRecord::Base
  require 'json'
  belongs_to :setup, :foreign_key => 'name', :primary_key => 'pattern'

  def MACD_STOCHASTIC(data, item)
    macd = Macd.new(data)
    stochastic = Stochastic.new
    moving_average = MovingAverage.new
    yesterday = data.drop(1)

    last_candle = Candle.new(data[0])
    sma200 = moving_average.sma(200, data)
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
    if last_candle.close >= sma200
      # 2.The MACD value crosses signal from bottom
      if (yesterday_macd.value < macd.value) && (yesterday_macd.signal > yesterday_macd.value) && (macd.value > macd.signal)
        # 3.The Stochastic Oscillator is less than 50 and this reading is also heading higher
        if yesterday_stochastic.k < 50
          stop_loss = stochastic.min
          take_profit = last_candle.high + (last_candle.high * 0.15)
          levels = [{ :take_profit => take_profit, :buy_stop => last_candle.high + 0.02, :stop_loss => stop_loss - 0.02, :macd => macd.value, :signal => macd.signal, :gistogram => macd.gistogram, :stochastic => stochastic.k, :sma200 => sma200 }].to_json
          save_setup(item,data,'MACD_STOCHASTIC','BUY',levels)
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
    if last_candle.close <= sma200
      # 2.The MACD value crosses signal from top
      if (yesterday_macd.value > macd.value) && (yesterday_macd.signal < yesterday_macd.value) && (macd.value < macd.signal)
        # 3.The Stochastic Oscillator is greater than 50 and this reading is also heading higher
        if yesterday_stochastic.k > 50
          stop_loss = stochastic.max
          take_profit = last_candle.low - (last_candle.low * 0.15)
          levels = [{ :take_profit => take_profit, :sell_stop => last_candle.low - 0.02, :stop_loss => stop_loss + 0.02, :macd => macd.value, :signal => macd.signal, :gistogram => macd.gistogram, :stochastic => stochastic.k, :sma200 => sma200 }].to_json
          save_setup(item,data,'MACD_STOCHASTIC','SELL',levels)
        end
      end
    end
  end

  private
    def save_setup(item, data, pattern, direction, levels)
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
        setup.save
      end
    end
end
