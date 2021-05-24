class Category < ApplicationRecord
  has_many :category_products 
  # ^ Has to be defined above "through" line 
  # because through uses this line to get what it needs.
  has_many :products, through: :category_products


end
