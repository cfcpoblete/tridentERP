class AddHistoryExtraFields < ActiveRecord::Migration[6.0]
  def self.up
    change_table :histories do |t|
      t.text :all_data
    end
  end

  def self.down
    change_table :histories do |t|
      t.remove :all_data
    end
  end
end
