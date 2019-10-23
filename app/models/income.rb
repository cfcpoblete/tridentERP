# author: Boris Barroso
# email: boriscyber@gmail.com
# Class that creates incomes "Sales"
class Income < Movement

  ########################################
  # Relationships
  has_many :income_details, -> { order('id asc') }, foreign_key: :account_id, dependent: :destroy
  alias_method :details, :income_details
  accepts_nested_attributes_for :income_details, allow_destroy: true,
    reject_if: proc { |det| det.fetch(:item_id).blank? }

  has_many :payments, -> { where(operation: 'payin') }, class_name: 'AccountLedger', foreign_key: :account_id
  has_many :devolutions, -> { where(operation: 'devout') }, class_name: 'AccountLedger', foreign_key: :account_id
end
