class AddAccountLedgersContactId < ActiveRecord::Migration[6.0]
  def self.up
    change_table :account_ledgers do |t|
      t.integer :contact_id
      t.index :contact_id
    end

    execute 'UPDATE account_ledgers al SET contact_id = a.contact_id FROM accounts a WHERE al.account_id = a.id '
  end

  def self.down
    remove_index :account_ledgers, :contact_id
    remove_column :account_ledgers, :contact_id
  end
end
