class AddAccountsCreatorApproverUpdater < ActiveRecord::Migration[6.0]
  def self.up
    change_table :accounts do |t|
      t.integer :creator_id
      t.integer :approver_id
      t.integer :nuller_id
      t.date :due_date
    end

    add_index :accounts, :creator_id
    add_index :accounts, :approver_id
    add_index :accounts, :nuller_id
    add_index :accounts, :due_date
  end

  def self.down
    remove_column :accounts, :creator_id
    remove_column :accounts, :approver_id
    remove_column :accounts, :nuller_id
    remove_column :accounts, :due_date
  end
end
