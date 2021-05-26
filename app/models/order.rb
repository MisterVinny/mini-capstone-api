class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  validates :user_id, presence: true, numericality: {only_integer: true, greater_than: 0}
  validates :product_id, presence: true, numericality: {only_integer: true, greater_than: 0}
  validates :quantity, presence: true, numericality: {only_integer: true, greater_than: 0}
  
end



#assuming the user can see what products to order via already-created index
#generate an order controller
#a route will need to be made for creating an order
#an associated #create action will need to be made in orders_controller
####needs product id and quanity params and user id from current user###classnote
#create action should have an awareness of the current user (pass in as param or use validation) and use the user.name and user.email somewhere for the order info (vague)
#create action should take in a product and quanity
#validations added to order model to ensure a user is present, product is present and valid, and a quanitity is present and not zero
#if an order save successful, show the user an overview of order info
