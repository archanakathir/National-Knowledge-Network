json.array!(@national_long_distances) do |national_long_distance|
  json.extract! national_long_distance, :id, :nld_name
  json.url national_long_distance_url(national_long_distance, format: :json)
end
