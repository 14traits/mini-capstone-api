class User < ApplicationRecord
  has_many :orders
  has_many :carted_products, through: :orders
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
