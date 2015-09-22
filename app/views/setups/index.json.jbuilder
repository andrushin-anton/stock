json.array!(@setups) do |setup|
  json.extract! setup, :id, :symbol, :datetime, :pattern
  json.url setup_url(setup, format: :json)
end
