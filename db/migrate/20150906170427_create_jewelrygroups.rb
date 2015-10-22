class CreateJewelrygroups < ActiveRecord::Migration
  def change
    create_table :jewelrygroups do |t|
      t.string :jewelrygroup

      t.timestamps null: false
    end
  end
end
