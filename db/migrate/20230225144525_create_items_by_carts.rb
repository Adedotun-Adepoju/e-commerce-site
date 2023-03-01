class CreateItemsByCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :items_by_carts do |t|
      t.references :cart, null: false, foreign_key:true
      t.references :item, null: false, foreign_key: true
      t.text :quantity

      t.timestamps
    end
  end
end
