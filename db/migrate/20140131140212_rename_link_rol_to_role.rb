class RenameLinkRolToRole < ActiveRecord::Migration[6.0]
  def self.up
    rename_column :links, :rol, :role
  end

  def self.down
    rename_column :links, :role, :rol
  end
end
