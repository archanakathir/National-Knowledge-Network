json.array!(@lists) do |list|
  json.extract! list, :id, :state, :state_name
  json.url list_url(list, format: :json)
end
