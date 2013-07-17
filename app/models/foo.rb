class Foo < ActiveRecord::Base

  has_many :bars, autosave: true, dependent: :destroy

  attr_accessible :id,
                  :foo_date,
                  :is_happy,
                  :name,
                  :age,
                  :power,
                  :foo,
                  :foo_id

  attr_accessor :client_id
end
