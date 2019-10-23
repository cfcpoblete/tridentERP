# encoding: utf-8
# author: Boris Barroso
# email: boriscyber@gmail.com
class Contact < ActiveRecord::Base
  ########################################
  # Relationships
  has_many :contact_accounts, -> { where(type: 'ContactAccount') },
           foreign_key: :contact_id

  has_many :accounts

  has_many :incomes, -> { where(type: 'Income').order('accounts.date desc, accounts.id desc') },
           foreign_key: :contact_id

  has_many :expenses, -> { where(type: 'Expense').order('accounts.date desc, accounts.id desc') },
           foreign_key: :contact_id

  has_many :inventories
end
