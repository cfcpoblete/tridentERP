class Product < ApplicationRecord
  has_many :product_parts
  has_many :parts, through: :product_parts, dependent: :destroy
end
