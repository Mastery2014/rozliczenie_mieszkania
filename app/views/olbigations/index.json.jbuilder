json.array!(@olbigations) do |olbigation|
  json.extract! olbigation, :id, :date, :description, :client_id, :cold_water, :cold_water_price, :cental_heating, :central_heating_price, :hot_water, :hot_water_price, :electricity, :electricity_price, :other_price
  json.url olbigation_url(olbigation, format: :json)
end
