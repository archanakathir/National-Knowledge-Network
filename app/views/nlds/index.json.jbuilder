json.array!(@nlds) do |nld|
  json.extract! nld, :id, :NLD, :Name
  json.url nld_url(nld, format: :json)
end
