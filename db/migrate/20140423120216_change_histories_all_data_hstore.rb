class ChangeHistoriesAllDataHstore < ActiveRecord::Migration[6.0]
  def self.up
    #change_column :histories, :history_data, :json
    execute("ALTER TABLE histories ALTER COLUMN all_data TYPE json USING all_data::json")
    execute("ALTER TABLE histories ALTER COLUMN all_data SET DEFAULT '{}'::json")
  end

  def self.down
    execute("ALTER TABLE histories ALTER COLUMN all_data TYPE text")
  end
end
