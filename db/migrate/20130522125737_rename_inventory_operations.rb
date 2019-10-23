class RenameInventoryOperations < ActiveRecord::Migration[6.0]
  def self.up
    remove_index :inventory_operation_details, :inventory_operation_id

    rename_table :inventory_operations, :inventories
    rename_table :inventory_operation_details, :inventory_details

    rename_column :inventory_details, :inventory_operation_id, :inventory_id
    add_index :inventory_details, :inventory_id
  end

  def self.down
    rename_table :inventories, :inventory_operations
    rename_table :inventory_details, :inventory_operation_details
  end
end
