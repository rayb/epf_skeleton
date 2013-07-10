class FooSerializer < ActiveModel::Serializer
  embed :ids
	attributes :id,
							:name,
							:age,
              :power
end
