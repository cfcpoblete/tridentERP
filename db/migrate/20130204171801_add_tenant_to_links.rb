class AddTenantToLinks < ActiveRecord::Migration[6.0]
  def self.up
    change_table :links do |t|
      t.string :tenant, limit: 100
    end

    add_index :links, :tenant
  end
end
