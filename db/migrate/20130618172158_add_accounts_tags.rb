class AddAccountsTags < ActiveRecord::Migration[6.0]
  def self.up
    add_column :accounts, :tag_ids, :integer, array: true, default: []
    add_index :accounts, :tag_ids, using: 'gin'
  end

  def self.down
    remove_index :accounts, :tag_ids
    remove_column :accounts, :tag_ids
  end
end
