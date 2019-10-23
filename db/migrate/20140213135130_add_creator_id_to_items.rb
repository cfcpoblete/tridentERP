class AddCreatorIdToItems < ActiveRecord::Migration[6.0]
  def self.up
    change_table :items do |t|
      t.integer :creator_id
      t.index :creator_id
    end
  end

  def self.down
    remove_index :items, :creator_id
    remove_column :items, :creator_id
  end
end
