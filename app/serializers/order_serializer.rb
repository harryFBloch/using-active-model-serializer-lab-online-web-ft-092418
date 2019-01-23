class OrderSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :name
  belongs_to :product
end
