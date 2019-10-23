class AddAccountLedgersOldReference < ActiveRecord::Migration[6.0]
  def self.up
    change_table :account_ledgers do |t|
      t.string :old_reference
    end
  end

  def self.down
    change_table :account_ledgers do |t|
      t.remove :old_reference
    end
  end
end
