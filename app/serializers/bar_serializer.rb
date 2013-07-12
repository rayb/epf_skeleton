class BarSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id,
              :name,
              #:sent_at,
              #:is_happy,
              :foo_id,
              :client_id

end
