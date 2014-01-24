json.array!(@flat_types) do |flat_type|
  json.extract! flat_type, :id, :name
  json.url flat_type_url(flat_type, format: :json)
end
