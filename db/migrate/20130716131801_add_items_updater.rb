class AddItemsUpdater < ActiveRecord::Migration[6.0]
  def self.up
    change_table :items do |t|
      t.integer :updater_id
    end

    add_index :items, :updater_id
  end

  def self.down
    change_table :items do |t|
      t.remove :updater_id
    end
  end
end
