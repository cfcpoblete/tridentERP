class AddCountryToOrganisations < ActiveRecord::Migration[6.0]
  def self.up
    add_column :organisations, :country_code, :string, limit: 5
    add_index :organisations, :country_code
  end
end
