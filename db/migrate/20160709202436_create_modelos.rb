class CreateModelos < ActiveRecord::Migration
  def change
    create_table :modelos do |t|
      t.string :name_model

      t.timestamps null: false
    end
  end
end
