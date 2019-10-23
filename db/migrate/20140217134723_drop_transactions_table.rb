class DropTransactionsTable < ActiveRecord::Migration[6.0]
  def self.up
    drop_table :transactions
  end

  def self.down
    puts 'Nothing to do with table transactions'
  end
end
