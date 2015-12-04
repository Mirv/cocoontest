json.array!(@quantities) do |quantity|
  json.extract! quantity, :id, :amount, :ingredient
  json.url quantity_url(quantity, format: :json)
end
