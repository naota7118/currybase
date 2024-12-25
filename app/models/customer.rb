class Customer < ApplicationRecord
  has_many :orders
  validates :name, presence: true, length: { minimum: 1 }
  validates :email, presence: true, uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
