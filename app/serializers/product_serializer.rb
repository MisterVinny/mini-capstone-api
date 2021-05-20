class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :supplier
  #to fix :is_discounted?, :tax, :total
end
