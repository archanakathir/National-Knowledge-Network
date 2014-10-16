json.array!(@things) do |thing|
  json.extract! thing, :id, :state, :state_name
  json.url thing_url(thing, format: :json)
end
