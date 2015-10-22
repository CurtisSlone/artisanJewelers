json.array!(@jewelrymetals) do |jewelrymetal|
  json.extract! jewelrymetal, :id, :metal
  json.url jewelrymetal_url(jewelrymetal, format: :json)
end
