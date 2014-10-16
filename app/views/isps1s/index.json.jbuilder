json.array!(@isps1s) do |isps1|
  json.extract! isps1, :id, :isp_id, :isp_name
  json.url isps1_url(isps1, format: :json)
end
