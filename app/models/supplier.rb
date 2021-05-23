class Supplier < ApplicationRecord
  has_many :products
  
  validates :name, presence: true
  validates :email, presence: true
  validates :phone_number, presence: true
end
