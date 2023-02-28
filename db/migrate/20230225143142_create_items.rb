class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.text :item_name
      t.integer :stock_number
      t.boolean :in_stock
      t.decimal :price
      t.text :description
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
