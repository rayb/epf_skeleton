class FooSerializer < ActiveModel::Serializer
  embed :ids
  #has_many :bars
	attributes :id,
							:name,
							:number,
							:is_happy,
							:foo_date
end
