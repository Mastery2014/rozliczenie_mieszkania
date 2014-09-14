json.array!(@readings) do |reading|
  json.extract! reading, :id, :data, :zimna_woda, :centralne ogrzewanie, :ciepła_woda, :elektryka
  json.url reading_url(reading, format: :json)
end
