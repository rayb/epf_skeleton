class FooSerializer < ActiveModel::Serializer
  embed :ids
  has_many :bars
  attributes :id,
							:name,
							:age,
              :power,
              :client_id,
              :is_happy
end
