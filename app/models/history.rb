class History < ActiveRecord::Base

  # Relationships
  belongs_to :historiable, polymorphic: true
  belongs_to :user

  store_accessor :extras, :klass_to_s, :operation_type

end
