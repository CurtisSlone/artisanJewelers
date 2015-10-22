class CreateJewelrymetals < ActiveRecord::Migration
  def change
    create_table :jewelrymetals do |t|
      t.string :metal

      t.timestamps null: false
    end
  end
end
