# encoding: utf-8
# author: Boris Barroso
# email: boriscyber@gmail.com
class Account < ActiveRecord::Base
  ########################################
  # Relationships
  belongs_to :contact
  has_many :account_ledgers, -> { order('date desc, id desc') }

  belongs_to :approver, class_name: 'User'
  belongs_to :nuller,   class_name: 'User'
  belongs_to :creator,  class_name: 'User'
  belongs_to :updater,  class_name: 'User'
  belongs_to :tax
end
