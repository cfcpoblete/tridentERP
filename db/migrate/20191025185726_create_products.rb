class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :photo
      t.string :code
      t.text :description
      t.string :sku_name
      t.string :name
      t.integer :supplier_id
      t.integer :brand_id

      t.timestamps
    end
  end
end
