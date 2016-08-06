json.array!(@cars) do |car|
  json.extract! car, :id, :id_car, :model_car, :brand_car
  json.url car_url(car, format: :json)
end
