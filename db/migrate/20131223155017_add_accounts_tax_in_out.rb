class AddAccountsTaxInOut < ActiveRecord::Migration[6.0]
  def self.up
    change_table :accounts do |t|
      t.boolean :tax_in_out, default: false
    end
    add_index :accounts, :tax_in_out # Needs onserver index
  end
end
