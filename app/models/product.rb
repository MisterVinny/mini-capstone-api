class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: {only_integer: true, greater_than: 0}
  validates :description, presence: true, length: {in: 10..500}
  validates :supplier_id, presence: true

  belongs_to :supplier
  has_many :images
  has_many :orders

  def is_discounted?
    price < 100 ? true : false
  end
  
  def tax
    (price * 0.09).round(2) if price != nil
  end
  
  def total
    price + tax
  end
  
end
