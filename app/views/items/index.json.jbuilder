json.array!(@items) do |item|
  json.extract! item, :id, :device, :brand, :model, :note_id
  json.url item_url(item, format: :json)
end
