json.array!(@line_items) do |line_item|
  json.extract! line_item, :id, :line_item_total, :order_id, :item_id
  json.url line_item_url(line_item, format: :json)
end
