# encoding: utf-8
# author: Boris Barroso
# email: boriscyber@gmail.com
class Store < ActiveRecord::Base
  has_many :stocks, -> { where(active: true) }, autosave: true
  has_many :inventories
end
