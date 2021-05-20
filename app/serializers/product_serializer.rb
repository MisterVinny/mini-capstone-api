class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :image_url, :supplier
  #to fix :is_discounted?, :tax, :total
end
