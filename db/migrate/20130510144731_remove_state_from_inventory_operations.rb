class RemoveStateFromInventoryOperations < ActiveRecord::Migration[6.0]
  def self.up
    remove_column :inventory_operations, :state
  end

  def self.down
  end
end
