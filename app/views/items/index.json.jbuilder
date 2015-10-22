json.array!(@items) do |item|
  json.extract! item, :id, :jewelrygroup_id, :jewelrycategory_id, :jewelrycollection_id, :jewelrymetal_id, :name, :upc, :price, :description, :location
  json.url item_url(item, format: :json)
end
