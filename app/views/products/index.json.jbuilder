json.array!(@products) do |product|
  json.extract! product, :id, :soap, :shampoo
  json.url product_url(product, format: :json)
end
