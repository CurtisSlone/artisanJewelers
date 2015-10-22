class CreateJewelrycollections < ActiveRecord::Migration
  def change
    create_table :jewelrycollections do |t|
      t.string :jewelcollection

      t.timestamps null: false
    end
  end
end
