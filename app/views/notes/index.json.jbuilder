json.array!(@notes) do |note|
  json.extract! note, :id, :symbol, :datetime, :pattern
  json.url note_url(note, format: :json)
end
