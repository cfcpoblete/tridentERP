class ChangeStockActiveColumn < ActiveRecord::Migration[6.0]
  def self.up
    change_table :stocks do |t|
      t.boolean :active, default: true
      t.remove :state

      # Index
      t.index :active
    end
  end

  def self.down
    change_table :stocks do |t|
      t.remove :active
    end
  end
end
