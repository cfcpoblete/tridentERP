# encoding: utf-8
# author: Boris Barroso
# email: boriscyber@gmail.com
class Tax < ActiveRecord::Base
  has_many :accounts
end
