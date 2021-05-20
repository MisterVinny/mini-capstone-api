class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :supplier, :images
  #to fix :is_discounted?, :tax, :total
end
