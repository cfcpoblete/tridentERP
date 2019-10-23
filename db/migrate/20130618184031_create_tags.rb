class CreateTags < ActiveRecord::Migration[6.0]
  def self.up
    create_table :tags do |t|
      t.string :name
      t.string :bgcolor, limit: 10

      t.timestamps
    end

    add_index :tags, :name
  end
end
