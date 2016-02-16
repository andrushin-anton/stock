class Pattern < ActiveRecord::Base
  require 'json'
  belongs_to :setup, :foreign_key => 'name', :primary_key => 'pattern'

  def R_M(data, item)

    if data.count > 3

      direction = 'BUY'
      pattern = 'R_M'
      today = data
      yesterday = data.drop(1)
      today_candle = Candle.new(today[0])
      ma = MovingAverage.new
      average_volume = ma.volume(60, yesterday)
      Price.table_name = 'D_'+item.symbol

      # Big volume spike
      if today_candle.is_buy
        if today_candle.volume >= (average_volume * 2)
          year_resistance = Price.where('date >= ? and date <= ?', data[0].date - 1.year, yesterday[0].date).order('high desc').first
          if today_candle.high >= year_resistance.high
            if year_resistance.date <= data[0].date - 2.months
              stop_loss = ma.floor(14, yesterday) - 0.03
              take_profit = today_candle.high + (today_candle.high * 0.20)
              levels = [{ :take_profit => take_profit, :buy_stop => today_candle.high + 0.02, :stop_loss => stop_loss }].to_json
              save_setup(item, data, pattern, direction, levels, 1.1)
            end
          end
        end
      end

      end

  end

  def R_M_WITH_MOVING_AVERAGES(data, item)
    direction = 'BUY'
    pattern = 'R_M'
    today = data
    yesterday = data.drop(1)
    today_candle = Candle.new(today[0])
    yesterday_candle = Candle.new(yesterday[0])
    ma = MovingAverage.new
    average_volume = ma.volume(60, yesterday)

    Price.table_name = 'D_'+item.symbol

    sma_90 = ma.sma(90, yesterday)
    sma_70 = ma.sma(70, yesterday)
    sma_50 = ma.sma(50, yesterday)

    if today_candle.is_buy
      if today_candle.volume >= (average_volume * 2.5)
        if today_candle.high > sma_50
          if (sma_50 >= sma_70 && sma_70 >= sma_90)

            stop_loss = ma.floor(14, data) - 0.03
            take_profit = today_candle.high + (today_candle.high * 0.20)
            levels = [{ :take_profit => take_profit, :buy_stop => today_candle.high + 0.02, :stop_loss => stop_loss }].to_json
            save_setup(item, data, pattern, direction, levels, 1.1)

          end
        end
      end
    end
  end

  # Big volume spike(buy) crosses 1 year resistance (GOOD)
  def R_M_GOOD(data, item)
    direction = 'BUY'
    pattern = 'R_M'
    today = data
    yesterday = data.drop(1)
    today_candle = Candle.new(today[0])
    ma = MovingAverage.new
    average_volume = ma.volume(60, yesterday)
    Price.table_name = 'D_'+item.symbol

    # Big volume spike
    if today_candle.is_buy
      if today_candle.volume >= (average_volume * 2)
        year_resistance = Price.where('date >= ? and date <= ?', data[0].date - 1.year, yesterday[0].date).order('high desc').first
        if today_candle.high >= year_resistance.high
          if year_resistance.date <= data[0].date - 2.months
            stop_loss = ma.floor(30, yesterday) - 0.03
            take_profit = today_candle.high + (today_candle.high * 0.20)
            levels = [{ :take_profit => take_profit, :buy_stop => today_candle.high + 0.02, :stop_loss => stop_loss }].to_json
            save_setup(item, data, pattern, direction, levels, 1.1)
          end
        end
      end
    end
  end

  # 1. Gap down with big volume spike
  def R_M_DOWN(data, item)
    direction = 'BUY'
    pattern = 'R_M'
    today = data
    yesterday = data.drop(1)
    today_candle = Candle.new(today[0])
    yesterday_candle = Candle.new(yesterday[0])
    ma = MovingAverage.new
    average_volume = ma.volume(60, yesterday)

    note = Note.where('symbol = ?', item.symbol).first
    unless note.nil?
      if note.datetime >= (data[0].date - 30.days) && note.datetime != data[0].date
        if today_candle.high >= note.pattern.to_f
          note.delete
          stop_loss = ma.floor(30, today) - 0.03
          take_profit = today_candle.high + (today_candle.high * 0.20)
          levels = [{ :take_profit => take_profit, :buy_stop => today_candle.high + 0.02, :stop_loss => stop_loss }].to_json
          save_setup(item, data, pattern, direction, levels, 1.1)
        end
      end
    end

    # 1. Gap down with big volume spike
    if today_candle.high < yesterday_candle.low
      if today_candle.volume >= (average_volume * 3)
        prev_note = Note.where('symbol = ?', item.symbol).first
        unless prev_note.nil?
          prev_note.delete
        end
        note = Note.new
        note.symbol = item.symbol
        note.pattern = today_candle.high.to_s
        note.datetime = data[0].date
        note.save
      end
    end

  end

  # 2. Gap up with big volume spike
  def R_M_UP(data, item)
    direction = 'BUY'
    pattern = 'R_M'
    today = data
    yesterday = data.drop(1)
    today_candle = Candle.new(today[0])
    yesterday_candle = Candle.new(yesterday[0])
    ma = MovingAverage.new
    average_volume = ma.volume(60, yesterday)

    # 1. Gap up with big volume spike
    if today_candle.is_buy
      if today_candle.low > yesterday_candle.high
        if today_candle.volume >= (average_volume * 3)
          unless Setup.where('symbol =? and pattern =? and direction =? and datetime > ? and datetime < ?', item.symbol, pattern, direction, (today[0].date - 180.days), today[0].date).first
            stop_loss = ma.floor(30, yesterday) - 0.03
            take_profit = today_candle.high + (today_candle.high * 0.20)
            levels = [{ :take_profit => take_profit, :buy_stop => today_candle.high + 0.02, :stop_loss => stop_loss }].to_json
            save_setup(item, data, pattern, direction, levels, 1.1)
          end
        end
      end
    end

  end





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

  def MA_OLD(data, item)
    last = data
    yesterday = data.drop(1)
    yesterday2 = data.drop(2)
    yesterday3 = data.drop(3)
    yesterday4 = data.drop(4)
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
    # rsi
    rsi_indicator = Rsi.new
    rsi_today = rsi_indicator.calculate(data)
    rsi_yesterday = rsi_indicator.calculate(yesterday)
    rsi_yesterday2 = rsi_indicator.calculate(yesterday2)
    rsi_yesterday3 = rsi_indicator.calculate(yesterday3)
    rsi_yesterday4 = rsi_indicator.calculate(yesterday4)

    min_45_days = rsi_indicator.min(last)
    prev_year = data.drop(356)
    unless prev_year[0].nil?
      prev_year_price = prev_year[0].close
    else
      prev_year_price = last[0].close
    end

    prev_yeah_proc = prev_year_price * 0.39
    prev_year_price = prev_year_price + prev_yeah_proc


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
        # RSI crosses 50 from bottom
        if (rsi_today >= 50) && (rsi_yesterday <= 50) && (rsi_yesterday2 <= 50) && (rsi_yesterday3 <= 50) && (rsi_yesterday4 <= 50)
          if Note.where('datetime >= ? and symbol = ? AND pattern = ?', Time.at(data[0].date - 45.days).to_datetime, item.symbol, 'MA').first
            # if in last 45 days min price was less than sma300
            if (min_45_days > sma300)
              # if from year ago price didn't grow more than 40%
              if (prev_year_price > last[0].close)
                stop_loss = sma100 - 0.05
                take_profit = last_candle.high + (last_candle.high * 0.2)
                levels = [{ :take_profit => take_profit, :buy_stop => last_candle.high + 0.02, :stop_loss => stop_loss }].to_json
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
    end
  end

  def MA(data, item)
    last = data
    yesterday = data.drop(1)
    two_months_ago = data.drop(40)
    last_candle = Candle.new(last[0])
    moving_average = MovingAverage.new
    # today
    sma100 = moving_average.sma(100, data)
    sma200 = moving_average.sma(200, data)
    sma300 = moving_average.sma(300, data)
    sma400 = moving_average.sma(400, data)
    sma500 = moving_average.sma(500, data)
    # yesterday
    y_sma100 = moving_average.sma(100, yesterday)
    # two months ago
    two_month_sma100 = moving_average.sma(100, two_months_ago)
    two_month_sma200 = moving_average.sma(200, two_months_ago)
    two_month_sma300 = moving_average.sma(300, two_months_ago)
    two_month_sma400 = moving_average.sma(400, two_months_ago)
    two_month_sma500 = moving_average.sma(500, two_months_ago)

    smas = []
    two_months_smas = []

    smas << sma200
    smas << sma300
    smas << sma400
    smas << sma500

    two_months_smas << two_month_sma200
    two_months_smas << two_month_sma300
    two_months_smas << two_month_sma400
    two_months_smas << two_month_sma500


    # if sma100 crosses smas max from bottom to top
    if (y_sma100 <= smas.max) && (sma100 > smas.max)
      # if 2 months ago sma100 was less than two_months_smas.min
      if (two_month_sma100 < two_months_smas.min)
        stop_loss = sma200 - 0.05
        take_profit = last_candle.high + (last_candle.high * 0.2)
        levels = [{ :take_profit => take_profit, :buy_stop => last_candle.high + 0.02, :stop_loss => stop_loss }].to_json
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

  def S7(data, item)
    pattern = 'S7'
    percent = 15
    days = 240

    today = data
    yesterday = data.drop(1)
    today_candle = Candle.new(today[0])
    yesterday_candle = Candle.new(yesterday[0])
    ma = MovingAverage.new

    today_close = today_candle.close
    yesterday_close = yesterday_candle.close

    # Calculate max
    max = ma.resistance(days, yesterday)
    # Calculate min
    min = ma.floor(days, yesterday)

    dif = (max - min)
    proc = (dif / max) * 100

    # if previous year price change was less than 15%
    if (proc <= percent)
      # yesterday close price was less then max and today is higher
      if (yesterday_close <= max) && (today_close > max)
        unless Setup.where('datetime >= ? and symbol = ? AND pattern = ?', Time.at(data[0].date - days.days).to_datetime, item.symbol, pattern).first
          stop_loss = min - 0.05
          take_profit = today_candle.high + (today_candle.high * 0.5)
          levels = [{ :take_profit => take_profit, :buy_stop => today_candle.high + 0.02, :stop_loss => stop_loss }].to_json
          # Calculate rating
          profit = take_profit - (today_candle.high + 0.02)
          risk = (today_candle.high + 0.02) - (stop_loss - 0.02)
          rating = profit / risk
          save_setup(item,data,pattern,'BUY',levels, rating)
        end
      end
    end
  end

  def R_M_old(data, item)
    pattern = 'R_M'
    # ma = MovingAverage.new

    # five_ma = ma.sma(5, data)
    # two_hundred_fifty_ma = ma.sma(250, data)

    Price.table_name = 'D_'+item.symbol

    # Save 5 simple moving average
    # price = Price.where('date = ?', Time.at(data[0].date).to_datetime).first
    #if price.fifty_average.nil?
      # price.fifty_average = five_ma
      # price.save
    #end

    # If it is not the start of the history data
    if Price.where('date < ?', (data[0].date - 6.months)).first
      year_back = data[0].date - 12.months
      six_months_back = data[0].date - 6.months
      # 1. if today is 0.5 year low - find prev 0.5 year high
      five_ma_6_months_low = Price.where('date > ? and date <= ?', year_back, data[0].date).order('low asc').first
      prev_note = Note.where('symbol = ?', item.symbol).first
      if five_ma_6_months_low.date == data[0].date
        five_ma_6_months_high = Price.where('date > ? and date <= ?', year_back, data[0].date).order('high desc').first
        # 2. delete from notes and save to notes low and high
        unless prev_note.nil?
        #   prev_note_levels = JSON.parse(prev_note.pattern)
        #   if data[0].low < prev_note_levels['low'].to_f
            prev_note.delete
            # save_note(item, five_ma_6_months_high.date, '{"high":"'+five_ma_6_months_high.high.to_s+'", "low":"'+five_ma_6_months_low.low.to_s+'"}')
          end
        # else
          save_note(item, five_ma_6_months_high.date, '{"high":"'+five_ma_6_months_high.high.to_s+'", "low":"'+five_ma_6_months_low.low.to_s+'"}')
        # end
      end

      # 3. check if today crosses levels from notes
      note = Note.where('symbol = ?', item.symbol).first
      unless note.nil?
        note_levels = JSON.parse(note.pattern)
        if data[0].high > note_levels['high'].to_f
          # 4. if yes remove from notes
          note_date = note.datetime
          note.delete
          # if ((data[0].date.to_date - note_date.to_date).to_i) > 200
            # 5. save setup
            stop_loss = note_levels['low'].to_f - 0.03
            take_profit = data[0].high + (data[0].high * 0.15)
            levels = [{ :take_profit => take_profit, :buy_stop => data[0].high + 0.02, :stop_loss => stop_loss }].to_json
            save_setup(item, data, pattern, 'BUY', levels, 1.1)
          # end
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

    def save_note(item, date, pattern)
      unless Note.where(:datetime => date, :symbol => item.symbol, :pattern => pattern).first
        note = Note.new
        note.symbol = item.symbol
        note.datetime = date
        note.pattern = pattern
        note.save
      end
    end

    def sort_by_date(dates, direction='ASC')
      sorted = dates.sort
      sorted.reverse! if direction == 'DESC'
      sorted
    end
end
