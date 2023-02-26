class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.references :customer, null: false, foreign_key: true 
      t.text :sub_total
      t.timestamps
    end
  end
end
