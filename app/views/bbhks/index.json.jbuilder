json.array!(@bbhks) do |bbhk|
  json.extract! bbhk, :id, :hall_size, :bed1_size, :bed2_size, :kitchen_size, :floor, :sold_out, :status
  json.url bbhk_url(bbhk, format: :json)
end
