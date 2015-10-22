json.array!(@jewelrygroups) do |jewelrygroup|
  json.extract! jewelrygroup, :id, :jewelrygroup
  json.url jewelrygroup_url(jewelrygroup, format: :json)
end
