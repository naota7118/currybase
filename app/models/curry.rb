class Curry < ApplicationRecord
  belongs_to: category
  belongs_to: spiceness
  belongs_to: ricesize
end
