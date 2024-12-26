class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :curry
  belongs_to :spiceness
  belongs_to :ricesize
end
