json.array!(@states) do |state|
  json.extract! state, :id, :state, :state_name
  json.url state_url(state, format: :json)
end
