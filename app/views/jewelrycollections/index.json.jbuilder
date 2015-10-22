json.array!(@jewelrycollections) do |jewelrycollection|
  json.extract! jewelrycollection, :id, :jewelcollection
  json.url jewelrycollection_url(jewelrycollection, format: :json)
end
