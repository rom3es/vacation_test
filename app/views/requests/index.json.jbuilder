json.array!(@requests) do |request|
  json.extract! request, :id, :firstname, :lastname, :days, :out_of_country
  json.url request_url(request, format: :json)
end
