json.array!(@parkings) do |parking|
  json.extract! parking, :id, :id_parking, :address, :name, :number, :pricing_hour, :image_one, :image_two
  json.url parking_url(parking, format: :json)
end
