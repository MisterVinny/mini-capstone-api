class Product < ApplicationRecord
  # validates :name, presence: true, uniqueness: true
  # validates :price, numericality: {only_integer: true, greater_than: 0}
  # validates :description, length: {in: 10..500}

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
