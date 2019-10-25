class AddCostToParts < ActiveRecord::Migration[6.0]
  def change
    add_column :parts, :cost, :decimal, default: 0
  end
end
