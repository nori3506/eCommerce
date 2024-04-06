class LineItem < ApplicationRecord
  belongs_to :cart
  belongs_to :order
  belongs_to :product, optional: true
end
