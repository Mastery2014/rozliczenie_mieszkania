json.array!(@clients) do |client|
  json.extract! klient, :id, :imię, :nazwisko, :telefon, :email, :początek, :koniec
  json.url client_url(client, format: :json)
end
