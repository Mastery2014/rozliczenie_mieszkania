json.array!(@readings) do |reading|
  json.extract! reading, :id, :data, :string, :zimna_woda, :odpływ, :centralne ogrzewanie, :odpływ, :ciepła_woda, :elektryka, :odpływ
  json.url reading_url(reading, format: :json)
end
