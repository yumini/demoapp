json.array!(@products) do |product|
  json.extract! product, :id, :product_name, :description, :price, :category_id, :modelo_id, :marca_id
  json.url product_url(product, format: :json)
end
