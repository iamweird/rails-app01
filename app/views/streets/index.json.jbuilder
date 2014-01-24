json.array!(@streets) do |street|
  json.extract! street, :id, :name, :city_id, :district_id
  json.url street_url(street, format: :json)
end
