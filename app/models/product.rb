class Product < ApplicationRecord
  has_many :product_parts
  has_many :parts, through: :product_parts, dependent: :destroy

  accepts_nested_attributes_for :product_parts, allow_destroy: true
end
