class AddGinIdexesAccountsAccountLedgers < ActiveRecord::Migration[6.0]
  def self.up
    # account_ledgers
    remove_column :account_ledgers, :description
    remove_column :account_ledgers, :old_reference
    remove_index :account_ledgers, :reference
    change_column :account_ledgers, :reference, :text

    # accounts
    remove_index :accounts, :name
    remove_index :accounts, :description
  end

  def self.down
    # account_ledgers
    add_column :account_ledgers, :description, :string
    add_column :account_ledgers, :old_reference, :string
    add_index :account_ledgers, :reference
    change_column :account_ledgers, :reference, :string

    # accounts
    remove_index :accounts, :name
    remove_index :accounts, :description
    # Normal btree indexes
    add_index :accounts, :name
    add_index :accounts, :description
  end
end
