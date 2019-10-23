class ChangeHistoriesToJson < ActiveRecord::Migration[6.0]
  def self.up
    #change_column :histories, :history_data, :json
    execute("ALTER TABLE histories ALTER COLUMN history_data TYPE json USING history_data::json")
    execute("ALTER TABLE histories ALTER COLUMN history_data SET DEFAULT '{}'::json")
  end

  def self.down
    execute("ALTER TABLE histories ALTER COLUMN history_data TYPE text")
  end
end
