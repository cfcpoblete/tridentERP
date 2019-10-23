class CreateUnits < ActiveRecord::Migration[6.0]
  def self.up
    create_table :units do |t|
      t.string :name, :limit => 100
      t.string :symbol, :limit => 20
      t.boolean :integer, :default => false
      t.boolean :visible, :default => true

      t.timestamps
    end
  end
end
