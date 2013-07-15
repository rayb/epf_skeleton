class Foo < ActiveRecord::Base
  #has_many :bars, autosave: true, dependent: :destroy
  attr_accessible :is_happy, :name, :age,  :power, :id  									#:bars,
									#:bars_attributes
      #:foo_date
  attr_accessor :client_id
end
