class AddAccountNameUniqueIndex < ActiveRecord::Migration[6.0]
  def self.up
    add_index :accounts, :name, unique: true
  end
end
