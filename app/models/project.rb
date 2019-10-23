# encoding: utf-8
# author: Boris Barroso
# email: boriscyber@gmail.com
class Project < ActiveRecord::Base
  # associations
  has_many :accounts
  has_many :account_ledgers
end
