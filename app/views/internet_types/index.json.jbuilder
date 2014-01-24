json.array!(@internet_types) do |internet_type|
  json.extract! internet_type, :id, :name
  json.url internet_type_url(internet_type, format: :json)
end
