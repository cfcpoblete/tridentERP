class RemoveActiveConciliationFromAccountLedgers < ActiveRecord::Migration[6.0]
  def self.up
    change_table :account_ledgers do |t|
      t.remove :conciliation
      t.remove :active
    end
  end

  def self.down
  end
end
