json.array!(@flats) do |flat|
  json.extract! flat, :id, :lon, :lat
  json.url flat_url(flat, format: :json)
end
