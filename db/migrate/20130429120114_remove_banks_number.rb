class RemoveBanksNumber < ActiveRecord::Migration[6.0]
  def self.up
    Organisation.pluck(:tenant).each do |tenant|
      Bank.includes(:money_store).each {|b| b.update_attributes!(name: "#{bank.name.strip} #{bank.number.strip}") }
    end

    remove_column :money_stores, :number
  end

  def self.down
  end
end
