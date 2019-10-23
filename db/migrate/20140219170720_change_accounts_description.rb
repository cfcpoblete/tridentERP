class ChangeAccountsDescription < ActiveRecord::Migration[6.0]
  def self.up
    change_column :accounts, :description, :text
    add_index :accounts, :description
  end

  def self.down
    change_column :accounts, :description, :string, limit: 500
    remove_index :accounts, :description
  end
end
