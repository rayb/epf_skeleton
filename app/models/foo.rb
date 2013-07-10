class Foo < ActiveRecord::Base
  #has_many :bars, autosave: true, dependent: :destroy
  attr_accessible :foo_date, :is_happy, :name, :age,  :power
									#:bars,
									#:bars_attributes
  attr_accessor :client_id
end
