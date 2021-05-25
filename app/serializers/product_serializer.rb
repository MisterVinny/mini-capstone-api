class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :supplier

  belongs_to :categories
  belongs_to :supplier
  has_many :images
end
