class AddContactsTagIds < ActiveRecord::Migration[6.0]
  def self.up
    add_column :contacts, :tag_ids, :integer, array: true, default: []
    add_index :contacts, :tag_ids, using: 'gin'
  end

  def self.down
    remove_index :contacts, :tag_ids
    remove_column :contacts, :tag_ids
  end
end
