class AddTransactionsNoInventory < ActiveRecord::Migration[6.0]
  def self.up
    change_table :transactions do |t|
      t.boolean :no_inventory, default: false
    end

    add_index :transactions, :no_inventory
  end

  def self.down
    change_table :transactions do |t|
      t.remove :no_inventory
    end
  end
end
