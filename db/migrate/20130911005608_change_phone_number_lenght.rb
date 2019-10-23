class ChangePhoneNumberLenght < ActiveRecord::Migration[6.0]
  def self.up
    change_column :organisations, :phone, :string, limit: 40
    change_column :organisations, :phone_alt, :string, limit: 40
    change_column :organisations, :mobile, :string, limit: 40

    change_column :users, :phone, :string, limit: 40
    change_column :users, :mobile, :string, limit: 40

    change_column :contacts, :phone, :string, limit: 40
    change_column :contacts, :mobile, :string, limit: 40

    change_column :stores, :phone, :string, limit: 40
  end
end
