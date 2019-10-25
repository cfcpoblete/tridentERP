class CreateParts < ActiveRecord::Migration[6.0]
  def change
    create_table :parts do |t|
      t.string :photo
      t.string :code
      t.text :description
      t.string :sku_name
      t.string :name
      t.integer :brand_id

      t.timestamps
    end
  end
end
