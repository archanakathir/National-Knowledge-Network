json.array!(@nations) do |nation|
  json.extract! nation, :id, :state, :state_name
  json.url nation_url(nation, format: :json)
end
