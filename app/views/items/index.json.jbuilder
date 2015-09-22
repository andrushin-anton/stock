json.array!(@items) do |item|
  json.extract! item, :id, :symbol, :name
  json.url item_url(item, format: :json)
end
