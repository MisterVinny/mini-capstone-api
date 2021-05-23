class Image < ApplicationRecord
  belongs_to :product

  validates :url, presence: true, uniqueness: true
  validates :product_id, uniqueness: true
end
