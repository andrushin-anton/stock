namespace :worker do

  desc "Makes analysis for each of the market's stock"

  task run_d: :environment do
    Item.all().each do |item|
      Price.table_name = 'D_'+item.symbol
      # Get data for last 3 days for this stock
      till = DateTime.now.strftime('%Y-%m-%d').to_datetime
      # till = '2014-12-31'.to_datetime
      ten_days_data = Price.where('date < ?', till).order('date desc').first(100)
      # if ten_days_data.length > 1
        # Loop through all of the existing pattens
        Pattern.all().each do |pattern|
          if pattern.respond_to? pattern.name
            # Make analysis if this stock applies current pattern
            pattern.send(pattern.name, ten_days_data, item)
          end
        end
      # end
    end
  end

  desc "Makes analysis for each of the market's stock in history"

  task run_history_d: :environment do
    Setup.delete_all
    Note.delete_all
    i = 1
    Item.all().each do |item|
      # if ['MCD','FB','MRK','INTC','HD','CMCSA','HCA','TJX','NOC','TWC','USB','DHR','PGR','PCAR','GIS','JBL','PNC','OMC','ARMK'].include? item.symbol
      # if ['AA', 'BA', 'INTC'].include? item.symbol
         Price.table_name = 'D_'+item.symbol
         first_day = Price.order('date asc').second
         from = first_day.date.to_datetime.to_i
         till = DateTime.yesterday.strftime('%Y-%m-%d').to_datetime.to_i
        (from .. till).step(1.day) do |date|
          ten_days_data = Price.where('date <= ?', Time.at(date).to_datetime).order('date desc').first(100)
          # if ten_days_data.length > 1
            # Loop through all of the existing pattens
            Pattern.all().each do |pattern|
              if pattern.respond_to? pattern.name
                # Make analysis if this stock applies current pattern
                pattern.send(pattern.name, ten_days_data, item)
              end
            end
          # end
        end
        puts i.to_s + '.' + item.symbol
        i = i + 1
      # end
    end
  end
end