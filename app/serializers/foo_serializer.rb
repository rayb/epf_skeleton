class FooSerializer < ActiveModel::Serializer
  embed :ids
	attributes :id,
							:name,
							:number
end
