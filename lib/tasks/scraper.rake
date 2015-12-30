namespace :scraper do

  desc 'Fetches stock data form different sources for last day'

  task daily: :environment do
    require 'open-uri'
    require 'json'

    offset = 0
    limit = 10
    total = Item.count('symbol', :distinct => true)

    while total > offset
      symbols = Item.limit(limit).offset(offset).pluck(:symbol)
      # Yahoo finance source
      polling_url = 'http://query.yahooapis.com/v1/public/yql'
      params = {
          q: 'select * from yahoo.finance.quotes where symbol in (' + symbols.map{ |i|  %Q("#{i}") }.join(',') + ')		',
          env: 'http://datatables.org/alltables.env',
          format: 'json'
      }

      # Prepare API request
      uri = URI.parse(polling_url)
      uri.query = URI.encode_www_form(params)

      # Submit request
      result = JSON.parse(open(uri).read)

      # Display results to screen
      # puts JSON.pretty_generate result

      if result['query']['results'].nil?
        raise('Yahoo did not return any quote results')
      end

      result['query']['results']['quote'].each do |quote|
        unless ActiveRecord::Base.connection.table_exists?('D_'+quote['symbol'])
          ActiveRecord::Base.connection.create_table 'D_'+quote['symbol'] do |t|
            t.datetime :date
            t.float :open
            t.float :high
            t.float :low
            t.float :close
            t.integer :volume
            t.float :adj_close
            t.float :fifty_average
            t.float :hundred_average
            t.float :two_hundred_average

            t.timestamps null: false
          end
        end

        Price.table_name = 'D_'+quote['symbol']

        last_trade_date = Date.strptime(quote['LastTradeDate'], '%m/%d/%Y')
        if price = Price.where(:date => last_trade_date).first
          price.volume = quote['Volume']
          price.high = quote['DaysHigh']
          price.low = quote['DaysLow']
          price.open = quote['Open']
          price.close = quote['LastTradePriceOnly']
        else
          price = Price.new
          price.date = last_trade_date
          price.volume = quote['Volume']
          price.high = quote['DaysHigh']
          price.low = quote['DaysLow']
          price.open = quote['Open']
          price.close = quote['LastTradePriceOnly']
        end
        unless quote['DaysHigh'].nil? || quote['DaysLow'].nil? || quote['Open'].nil? || quote['LastTradePriceOnly'].nil?
          price.save
        end
      end
      sleep(10)
      offset = offset + limit
    end
  end

  desc 'Fetches history data for last year'

  task history: :environment do
    require 'open-uri'
    require 'csv'

    # Download csv file with history data
    symbols = Item.all().pluck(:symbol)
    symbols.each do |symbol|
      Price.table_name = 'D_'+symbol
      #create stock table if not exists
      unless ActiveRecord::Base.connection.table_exists?('D_'+symbol)
        ActiveRecord::Base.connection.create_table 'D_'+symbol do |t|
          t.datetime :date
          t.float :open
          t.float :high
          t.float :low
          t.float :close
          t.integer :volume
          t.float :adj_close
          t.float :fifty_average
          t.float :hundred_average
          t.float :two_hundred_average

          t.timestamps null: false
        end
      end
      #download history data if there is no info in the database
      if Price.count < 50
        download = open('http://real-chart.finance.yahoo.com/table.csv?s='+ symbol +'&a=11&b=12&c=1980&d='+ Date.today.strftime('%m') +'&e='+ Date.today.strftime('%d') +'&f='+ Date.today.strftime('%Y') +'&g=d&ignore=.csv')
        IO.copy_stream(download, 'db/history/'+ symbol +'.csv')
        download.close()

        # Migrate data from csv files to the database
        CSV.foreach('db/history/'+ symbol +'.csv') do |row|
          unless row[0] == 'Date' || row[0] == ''
            datetime = Date.strptime(row[0], '%Y-%m-%d')
            last_year = Date.today
            last_year = last_year - 3.year
            if datetime >= last_year
              unless Price.where(:date => datetime).first
                price = Price.new
                price.date = datetime
                price.volume = row[5]
                price.high = row[2]
                price.low = row[3]
                price.open = row[1]
                price.close = row[4]
                price.save
              end
            end
          end
        end
      end
    end
  end

  desc 'Fetches all the symbols'

  task symbols: :environment do
    require 'open-uri'
    require 'csv'

    download = open('https://dl.dropboxusercontent.com/s/z3fkz1lvrmmc2uz/symbols.csv')
    IO.copy_stream(download, 'db/symbols.csv')

    CSV.foreach('db/symbols.csv') do |row|
      unless row[0] == ''
        item = Item.find_by_symbol(row[0])
        unless item
          item = Item.new
        end
        item.symbol = row[0]
        item.name = row[1]
        item.market = row[2]
        item.description = row[3]
        item.save
      end
    end
  end

  desc 'Fetches all the patterns'

  task patterns: :environment do
    require 'open-uri'
    require 'csv'

    Pattern.delete_all

    download = open('https://dl.dropboxusercontent.com/s/wdnj9ue2jdpolmc/patterns.csv')
    IO.copy_stream(download, 'db/patterns.csv')

    CSV.foreach('db/patterns.csv') do |row|
      unless row[0] == ''
        if pattern = Pattern.find_by_name(row[0])
          pattern.name = row[0]
          pattern.description = row[1]
        else
          pattern = Pattern.new
          pattern.name = row[0]
          pattern.description = row[1]
        end
        pattern.save
      end
    end
  end
end