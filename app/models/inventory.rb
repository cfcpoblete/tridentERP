# encoding: utf-8
# author: Boris Barroso
# email: boriscyber@gmail.com
class Inventory < ActiveRecord::Base
  belongs_to :store
  belongs_to :store_to, class_name: "Store"
  belongs_to :contact
  belongs_to :creator, class_name: "User"
  belongs_to :expense, foreign_key: :account_id
  belongs_to :income, foreign_key: :account_id
  belongs_to :project

  #has_one    :transference, :class_name => 'InventoryOperation', :foreign_key => "transference_id"

  has_many :inventory_details, dependent: :destroy
  accepts_nested_attributes_for :inventory_details, allow_destroy: true,
                                reject_if: lambda {|attrs| attrs[:quantity].blank? || attrs[:quantity].to_d <= 0 }
  alias :details :inventory_details
end
