class AddUsersOldEmails < ActiveRecord::Migration[6.0]
  def self.up
    add_column :users, :old_emails, :text, array: true, default: []
  end

  def self.down
    remove_column :users, :old_emails
  end
end
