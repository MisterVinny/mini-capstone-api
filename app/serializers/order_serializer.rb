class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :product, :subtotal, :tax, :total

  #alternatively, to have product serializer output
  #belongs_to :product
end
