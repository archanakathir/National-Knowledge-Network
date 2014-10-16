json.array!(@nls) do |nl|
  json.extract! nl, :id, :NLD, :Name
  json.url nl_url(nl, format: :json)
end
