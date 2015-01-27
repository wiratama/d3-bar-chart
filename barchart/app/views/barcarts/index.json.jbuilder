json.array!(@barcarts) do |barcart|
  json.extract! barcart, :id
  json.url barcart_url(barcart, format: :json)
end
