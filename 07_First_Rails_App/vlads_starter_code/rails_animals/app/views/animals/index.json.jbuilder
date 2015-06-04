json.array!(@animals) do |animal|
  json.extract! animal, :id, :name, :animal_type, :breed, :age, :available
  json.url animal_url(animal, format: :json)
end
