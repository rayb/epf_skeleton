class Bar < ActiveRecord::Base
  belongs_to :foo
  attr_accessible :id,
                  :foo_id,
                  :name,
                  #:sent_at,
                  #:is_happy,
                  :foo,
                  :bars,
                  :bars_attributes
  attr_accessor :client_id
end
