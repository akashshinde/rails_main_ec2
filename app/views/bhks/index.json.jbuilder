json.array!(@bhks) do |bhk|
  json.extract! bhk, :id, :hall_size, :bed_size, :kitchen_size, :floor, :sold_out, :status
  json.url bhk_url(bhk, format: :json)
end
