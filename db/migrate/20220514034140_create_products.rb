class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :description, null: false
      t.float :price, null: false
      t.integer :quantity, null: false
      t.integer :warehouse_id, null: false

      t.timestamps
    end
    add_index :products, :description
  end
end
