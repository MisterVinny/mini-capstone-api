class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :supplier, :images, :categories
end
