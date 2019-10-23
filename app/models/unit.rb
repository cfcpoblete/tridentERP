# encoding: utf-8
# author: Boris Barroso
# email: boriscyber@gmail.com
class Unit < ActiveRecord::Base
  # Relationships
  has_many :items
end
