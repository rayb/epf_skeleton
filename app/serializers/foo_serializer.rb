class FooSerializer < ActiveModel::Serializer
  embed :ids
	attributes :id,
							:name,
							:age,
              :power,
              :client_id,
              :is_happy
end
