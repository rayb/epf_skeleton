class BarSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id,
              :name,
              :bar_date,
              #:is_happy,
              :foo_id,
              :client_id

end
