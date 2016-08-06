json.array!(@reserves) do |reserf|
  json.extract! reserf, :id, :id_reserve, :date_entry, :date_out, :amount_pay, :car_id, :parking_id
  json.url reserf_url(reserf, format: :json)
end
