json.array!(@businesses) do |business|
  json.extract! business, :id, :logo, :name, :description
  json.url business_url(business, format: :json)
end
