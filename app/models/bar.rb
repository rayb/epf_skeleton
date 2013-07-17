class Bar < ActiveRecord::Base

  belongs_to :foo

  attr_accessible :id,
                  :foo_id,
                  :name,
                  :bar_date,
                  :foo,
                  :bars,
                  :bars_attributes

  attr_accessor :client_id

end
