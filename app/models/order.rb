class Order < ApplicationRecord
  belongs_to :customers
  belongs_to :curry
  belongs_to :spiceness
  belongs_to :ricesize
end
