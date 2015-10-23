namespace :worker do

  desc "Makes analysis for each of the market's stock"

  task run_d: :environment do
    Item.all().each do |item|
      Price.table_name = 'D_'+item.symbol
      # Get data for last 3 days for this stock
      ten_days_data = Price.where("date < '" + DateTime.now.strftime('%Y-%m-%d 00:00:00') + "'").order('date desc').first(300)
      if ten_days_data.length > 1
        # Loop through all of the existing pattens
        Pattern.all().each do |pattern|
          if pattern.respond_to? pattern.name
            # Make analysis if this stock applies current pattern
            pattern.send(pattern.name, ten_days_data, item)
          end
        end
      end
    end
  end

  desc "Makes analysis for each of the market's stock in history"

  task run_history_d: :environment do
    Item.all().each do |item|
      #if item.symbol == 'CI'
        Price.table_name = 'D_'+item.symbol
        ('2014-01-01'.to_datetime.to_i .. DateTime.yesterday.strftime('%Y-%m-%d').to_datetime.to_i).step(1.day) do |date|
          ten_days_data = Price.where('date <= ?', Time.at(date).to_datetime).order('date desc').first(300)
          if ten_days_data.length > 1
            # Loop through all of the existing pattens
            Pattern.all().each do |pattern|
              if pattern.respond_to? pattern.name
                # Make analysis if this stock applies current pattern
                pattern.send(pattern.name, ten_days_data, item)
              end
            end
          end
        end
      #end
    end
  end
end