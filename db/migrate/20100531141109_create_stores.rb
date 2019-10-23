class CreateStores < ActiveRecord::Migration[6.0]
  def self.up
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.boolean :active, :default => true
      t.string :description

      t.timestamps
    end
  end
end
