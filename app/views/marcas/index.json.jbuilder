json.array!(@marcas) do |marca|
  json.extract! marca, :id, :name_marca
  json.url marca_url(marca, format: :json)
end
