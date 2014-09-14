json.array!(@rates) do |rate|
  json.extract! rate, :id, :valid_from, :cold_water, :central_heating, :hot_water, :electricity
  json.url rate_url(rate, format: :json)
end
