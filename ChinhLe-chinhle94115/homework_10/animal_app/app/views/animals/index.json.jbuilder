json.array!(@animals) do |animal|
  json.extract! animal, :id, :common_name, :genus, :species, :native_to, :north_america, :south_america, :europe, :africa, :asia, :australia, :anartica
  json.url animal_url(animal, format: :json)
end
