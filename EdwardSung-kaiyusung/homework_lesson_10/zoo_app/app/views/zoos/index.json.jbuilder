json.array!(@zoos) do |zoo|
  json.extract! zoo, :id, :name, :animal_type, :age, :available, :image
  json.url zoo_url(zoo, format: :json)
end
