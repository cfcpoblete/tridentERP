# encoding: utf-8
# author: Boris Barroso
# email: boriscyber@gmail.com
class Link < ActiveRecord::Base
  belongs_to :organisation, inverse_of: :links
  belongs_to :user, inverse_of: :active_links
end
