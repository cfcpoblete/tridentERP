class AddItemsBuyPrice < ActiveRecord::Migration[6.0]
  def self.up
    change_table :items do |t|
      t.decimal :buy_price, precision: 14, scale: 2, default: 0.0
    end
  end

  def self.down
    change_table :items do |t|
      t.remove :buy_price
    end
  end
end
