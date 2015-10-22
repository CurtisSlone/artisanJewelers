json.array!(@jewelrycategories) do |jewelrycategory|
  json.extract! jewelrycategory, :id, :jewelrycategory
  json.url jewelrycategory_url(jewelrycategory, format: :json)
end
