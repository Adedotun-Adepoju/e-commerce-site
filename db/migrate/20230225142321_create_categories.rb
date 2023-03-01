class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :category_name
      t.text :slug
      t.text :description
      t.text :img_src

      t.timestamps
    end
  end
end
