class CreateProductParts < ActiveRecord::Migration[6.0]
  def change
    create_table :product_parts do |t|
      t.integer :product_id
      t.integer :part_id
      t.integer :quantity

      t.timestamps
    end
  end
end
