# encoding: utf-8
class IncomeDetail < MovementDetail

  # Relationships
  belongs_to :income, -> { where(type: 'Income') }, foreign_key: :account_id, inverse_of: :income_details
  belongs_to :item, inverse_of: :income_details
end
