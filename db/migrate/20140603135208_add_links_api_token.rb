class AddLinksApiToken < ActiveRecord::Migration[6.0]
  def self.up
    add_column :links, :api_token, :string
    add_index :links, :api_token, unique: true
  end

  def self.down
    remove_index :links, :api_token
    remove_column :links, :api_token
  end
end
