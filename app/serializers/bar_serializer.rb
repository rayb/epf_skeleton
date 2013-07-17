class BarSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id,
              :name,
              :bar_date,
              :foo_id,
              :client_id

end
