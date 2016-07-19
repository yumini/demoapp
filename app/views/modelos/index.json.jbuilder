json.array!(@modelos) do |modelo|
  json.extract! modelo, :id, :name_model
  json.url modelo_url(modelo, format: :json)
end
