# author: Boris Barroso
# email: boriscyber@gmail.com
# Base class for Income and Expense
class Movement < Account
  ########################################
  # Relationships
  belongs_to :contact
  belongs_to :project

  has_many :ledgers, foreign_key: :account_id, class_name: 'AccountLedger'
  has_many :inventories, foreign_key: :account_id
end
