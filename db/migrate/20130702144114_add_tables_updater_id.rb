class AddTablesUpdaterId < ActiveRecord::Migration[6.0]
  def self.up
    add_column :account_ledgers, :updater_id, :integer
    add_index :account_ledgers, :updater_id
    add_column :accounts, :updater_id, :integer
    add_index :accounts, :updater_id
    add_column :inventories, :updater_id, :integer
    add_index :inventories, :updater_id
  end

  def self.down
    remove_column :account_ledgers, :updater_id
    remove_column :accounts, :updater_id
    remove_column :inventories, :updater_id
  end
end
