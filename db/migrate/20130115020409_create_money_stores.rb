class CreateMoneyStores < ActiveRecord::Migration[6.0]
  def self.up
    create_table :money_stores do |t|
      t.integer :account_id
      t.string  :number, limit: 100
      t.string  :email
      t.string  :address, limit: 300
      t.string  :phone, limit: 50
      t.string  :website
    end

    add_index :money_stores, :account_id
  end
end
