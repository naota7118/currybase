class Customer < ApplicationRecord
  has_many :orders
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  has_secure_password
end
