class AddOrganisationsActiveInventory < ActiveRecord::Migration[6.0]
  def self.up
    change_table :organisations do |t|
      t.boolean :inventory_active, default: true
    end
  end

  def self.down
    change_table :organisations do |t|
    end
  end
end
