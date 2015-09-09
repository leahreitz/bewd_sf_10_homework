json.array!(@animals) do |animal|
  json.extract! animal, :id, :name, :species, :location, :count, :image
  json.url animal_url(animal, format: :json)
end
