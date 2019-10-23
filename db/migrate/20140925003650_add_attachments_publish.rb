class AddAttachmentsPublish < ActiveRecord::Migration[6.0]
  def self.up
    add_column :attachments, :publish, :boolean, default: false
    add_index :attachments, :publish
  end

  def self.down
    remove_index :attachments, :publish
    remove_column :attachments, :publish
  end
end
