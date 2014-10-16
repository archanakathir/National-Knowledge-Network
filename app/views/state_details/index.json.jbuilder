json.array!(@state_details) do |state_detail|
  json.extract! state_detail, :id, :state, :state_name
  json.url state_detail_url(state_detail, format: :json)
end
