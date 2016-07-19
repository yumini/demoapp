class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :description
      t.decimal :price
      t.integer :category_id
      t.integer :modelo_id
      t.integer :marca_id

      t.timestamps null: false
    end
  end
end
