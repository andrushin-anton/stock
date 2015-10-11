namespace :tester do

  task run: :environment do
    setups = Setup.where(:symbol => 'PG').order('datetime asc')

    setups.each do |setup|
      Price.table_name = 'D_'+setup.symbol
      (setup.datetime.to_i .. DateTime.yesterday.strftime('%Y-%m-%d').to_datetime.to_i).step(1.day) do |date|
        data = Price.where('date <= ?', Time.at(date).to_datetime).order('date desc').first(300)
        if data.length > 1
          if setup.direction == 'BUY'
            buy_price = data[0].hight + 0.02
            if data[1].hight >= buy_price
              puts 'bought at: ' + buy_price.to_s
            end
            # data.each do |day|
            #
            # end
          else
            sell_price = data[0].low - 0.02
            if data[1].low <= sell_price
              puts 'sold at: ' + sell_price.to_s
            end
            # data.each do |day|
            #
            # end
          end
        end
      end
    end
  end
end
