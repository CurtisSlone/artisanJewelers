class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :jewelrygroup, index: true, foreign_key: true
      t.references :jewelrycategory, index: true, foreign_key: true
      t.references :jewelrycollection, index: true, foreign_key: true
      t.references :jewelrymetal, index: true, foreign_key: true
      t.string :name
      t.integer :upc
      t.float :price
      t.text :description
      t.string :location

      t.timestamps null: false
    end
  end
end
