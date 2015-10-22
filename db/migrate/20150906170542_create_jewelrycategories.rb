class CreateJewelrycategories < ActiveRecord::Migration
  def change
    create_table :jewelrycategories do |t|
      t.string :jewelrycategory

      t.timestamps null: false
    end
  end
end
