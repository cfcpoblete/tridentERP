class AddAccountLedgersName < ActiveRecord::Migration[6.0]
  def self.up
    change_column :account_ledgers, :date, :date
    change_table :account_ledgers do |t|
      t.string :name
      t.index :name, unique: true
    end

    execute("UPDATE account_ledgers SET name = CONCAT('T-', SUBSTRING(EXTRACT(YEAR FROM date)::text FROM 3 FOR 4), '-', id)")
  end
end
