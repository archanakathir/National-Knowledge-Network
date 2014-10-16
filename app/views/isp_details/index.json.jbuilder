json.array!(@isp_details) do |isp_detail|
  json.extract! isp_detail, :id, :isp_name
  json.url isp_detail_url(isp_detail, format: :json)
end
