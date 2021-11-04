class Order < ApplicationRecord
  has_one :order_items
end
