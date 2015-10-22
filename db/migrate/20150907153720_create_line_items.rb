class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.float :line_item_total
      t.integer :order_id
      t.integer :item_id

      t.timestamps null: false
    end
  end
end
