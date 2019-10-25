class ProductPart < ApplicationRecord
  belongs_to :product
  belongs_to :part
  validates :quantity, numericality: { greater_than: 0, less_than_or_equal_to: 1000000000, only_integer: true }
end
