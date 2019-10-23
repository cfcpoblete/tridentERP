# encoding: utf-8
# author: Boris Barroso
# email: boriscyber@gmail.com
class Stock < ActiveRecord::Base
  belongs_to :store
  belongs_to :item
  belongs_to :user
end
