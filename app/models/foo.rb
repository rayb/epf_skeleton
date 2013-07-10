class Foo < ActiveRecord::Base
  #has_many :bars, autosave: true, dependent: :destroy
  attr_accessible :foo_date, :is_happy, :name, :age, :client_id, :power
									#:bars,
									#:bars_attributes
end
