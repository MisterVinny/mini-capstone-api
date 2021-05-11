class Product < ApplicationRecord

  def is_discounted?
    price < 100 ? true : false
  end
  
  def tax
    (price * 0.09).round(2)
  end
  
  def total
    price + tax
  end
  
end
