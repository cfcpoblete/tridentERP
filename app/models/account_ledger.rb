# encoding: utf-8
# author: Boris Barroso
# email: boriscyber@gmail.com
class AccountLedger < ActiveRecord::Base
  # Relationships
  belongs_to :account
  belongs_to :account_to, class_name: 'Account'
  belongs_to :contact

  belongs_to :approver, class_name: 'User'
  belongs_to :nuller,   class_name: 'User'
  belongs_to :creator,  class_name: 'User'
  belongs_to :updater,  class_name: 'User'
end
