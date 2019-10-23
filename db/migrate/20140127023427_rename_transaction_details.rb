class RenameTransactionDetails < ActiveRecord::Migration[6.0]
  def self.up
    rename_table :transaction_details, :movement_details
  end

  def self.down
    rename_table :movement_details, :transaction_details
  end
end
