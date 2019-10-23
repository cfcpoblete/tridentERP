class AddTagsToItems < ActiveRecord::Migration[6.0]
  def self.up
    change_table :items do |t|
      t.integer :tag_ids, array: true, default: []
    end
    #execute "ALTER TABLE items ADD COLUMN tag_ids integer[] DEFAULT '{}'"

    execute "CREATE INDEX index_items_on_tag_ids ON items USING GIN(tag_ids)"
  end

  def self.down
    execute "ALTER TABLE items DROP COLUMN tag_ids"
  end
end
