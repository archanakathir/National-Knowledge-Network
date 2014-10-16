json.array!(@isps_details) do |isps_detail|
  json.extract! isps_detail, :id, :isp, :isp_name, :ckt
  json.url isps_detail_url(isps_detail, format: :json)
end
