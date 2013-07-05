class Foo < ActiveRecord::Base
  #has_many :bars, autosave: true, dependent: :destroy
  attr_accessible :foo_date, :is_happy, :name, :number
									#:bars,
									#:bars_attributes
end
