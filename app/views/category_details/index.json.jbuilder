json.array!(@category_details) do |category_detail|
  json.extract! category_detail, :id, :category, :category_name
  json.url category_detail_url(category_detail, format: :json)
end
