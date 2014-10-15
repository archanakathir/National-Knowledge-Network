json.array!(@items) do |item|
  json.extract! item, :id, :state_id, :state_name
  json.url item_url(item, format: :json)
end
