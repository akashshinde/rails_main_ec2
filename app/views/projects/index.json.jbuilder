json.array!(@projects) do |project|
  json.extract! project, :id, :name, :address, :no_of_flats
  json.url project_url(project, format: :json)
end
