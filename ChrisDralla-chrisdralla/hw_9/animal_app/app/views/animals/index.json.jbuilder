json.array!(@animals) do |animal|
  json.extract! animal, :id, :name, :age, :extinct, :class
  json.url animal_url(animal, format: :json)
end
