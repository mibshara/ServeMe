class ProductItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  def tatal_price
    product.price * quantity
  end

end
