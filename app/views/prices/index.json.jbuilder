json.array!(@prices) do |price|
  json.extract! price, :id, :date, :open, :hight, :low, :close, :volume, :adj_close
  json.url price_url(price, format: :json)
end
