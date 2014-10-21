json.array!(@nlds_details) do |nlds_detail|
  json.extract! nlds_detail, :id, :nld, :nld_name
  json.url nlds_detail_url(nlds_detail, format: :json)
end
