json.array!(@payments) do |payment|
  json.extract! payment, :id, :date, :amount, :client_id
  json.url payment_url(payment, format: :json)
end
