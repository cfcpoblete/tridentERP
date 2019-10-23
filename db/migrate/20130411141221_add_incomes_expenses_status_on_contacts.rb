class AddIncomesExpensesStatusOnContacts < ActiveRecord::Migration[6.0]
  def self.up
    change_table :contacts do |t|
      t.remove :money_status
      t.string :incomes_status, default: '{}', limit: 300
      t.string :expenses_status, default: '{}', limit: 300
    end
  end

  def self.down
    change_table :contacts do |t|
      t.string :money_status
      t.remove :incomes_status
      t.remove :expenses_status
    end
  end
end
