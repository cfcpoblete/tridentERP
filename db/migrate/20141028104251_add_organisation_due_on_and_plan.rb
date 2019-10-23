class AddOrganisationDueOnAndPlan < ActiveRecord::Migration[6.0]
  def self.up
    add_column :organisations, :due_on, :date
    add_column :organisations, :plan, :string, default: '2users'
  end

  def self.down
    remove_column :organisations, :due_on, :date
    remove_column :organisations, :plan, :string
  end
end
