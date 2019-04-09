class CartOrderProduct < ApplicationRecord
  belongs_to :CartOrder
  belongs_to :Product
end
