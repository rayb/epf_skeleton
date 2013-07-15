class FooSerializer < ActiveModel::Serializer
  embed :ids, include: true
	attributes :id,
							:name,
							:age,
              :power,
              :client_id,
              :is_happy
              #:foo_date
end
