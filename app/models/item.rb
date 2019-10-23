# encoding: utf-8
# author: Boris Barroso
# email: boriscyber@gmail.com
class Item < ActiveRecord::Base
  ##########################################
  # Relationships
  belongs_to :unit
  has_many   :stocks, -> { where(active: true) }
  has_many   :income_details
  has_many   :expense_details
  has_many   :inventory_details
end
