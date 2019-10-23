class AddHistoriesKlassType < ActiveRecord::Migration[6.0]
  def self.up
    add_column :histories, :klass_type, :string
  end

  def self.down
    remove_column :histories, :klass_type
  end
end
