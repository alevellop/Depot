class LineItem < ActiveRecord::Base

	validates :product_id, presence: true

	belongs_to :order
  belongs_to :product
  belongs_to :cart

  def total_price
  	product.price * quantity
  end
end
