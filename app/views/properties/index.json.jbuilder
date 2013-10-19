json.array!(@properties) do |property|
  json.extract! property, :property_type, :city, :address, :neighborhood, :number_of_rooms, :cost_price, :sale_price, :owner, :client
  json.url property_url(property, format: :json)
end
