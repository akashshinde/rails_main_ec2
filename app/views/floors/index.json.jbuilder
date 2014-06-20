json.array!(@floors) do |floor|
  json.extract! floor, :id, :floor
  json.url floor_url(floor, format: :json)
end
