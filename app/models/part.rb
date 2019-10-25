class Part < ApplicationRecord
  has_many :product_parts
  has_many :products, through: :product_parts, dependent: :destroy
end
