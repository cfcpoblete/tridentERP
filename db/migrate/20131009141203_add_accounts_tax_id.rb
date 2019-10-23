class AddAccountsTaxId < ActiveRecord::Migration[6.0]
  def self.up
    change_table :accounts do |t|
      t.decimal :tax_percentage, precision: 5, scale: 2, default: 0
      t.integer :tax_id
    end

    add_index :accounts, :tax_id
  end

  def self.down
    remove_index :accounts, :tax_id
    remove_column :accounts, :tax_id
    remove_column :accounts, :tax_precentage
  end
end
