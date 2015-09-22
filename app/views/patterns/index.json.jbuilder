json.array!(@patterns) do |pattern|
  json.extract! pattern, :id, :name, :description
  json.url pattern_url(pattern, format: :json)
end
