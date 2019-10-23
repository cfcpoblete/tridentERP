class RemoveUserChanges < ActiveRecord::Migration[6.0]
  def self.up
    drop_table :user_changes
    drop_table :money_stores
    drop_table :transaction_histories
  end
end
