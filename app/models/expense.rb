# encoding: utf-8
# author: Boris Barroso
# email: boriscyber@gmail.com
class Expense < Movement
  ########################################
  # Relationships
  has_many :expense_details, -> { order('id asc') },
           foreign_key: :account_id, dependent: :destroy
  alias_method :details, :expense_details

  accepts_nested_attributes_for :expense_details, allow_destroy: true,
                                reject_if: proc { |det| det.fetch(:item_id).blank? }

  has_many :payments, -> { where(operation: 'payout') },
           class_name: 'AccountLedger', foreign_key: :account_id
  has_many :devolutions, -> { where(operation: 'devin') },
           class_name: 'AccountLedger', foreign_key: :account_id
end
