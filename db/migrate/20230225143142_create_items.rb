class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :item_name
      t.integer :stock_number
      t.decimal :price
      t.text :description
      t.text :image_src
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
