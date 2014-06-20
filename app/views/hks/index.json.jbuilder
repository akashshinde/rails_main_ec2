json.array!(@hks) do |hk|
  json.extract! hk, :id, :hall_size, :kitchen_size, :floor, :sold_out, :status
  json.url hk_url(hk, format: :json)
end
