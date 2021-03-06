class Order < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  PAYMENT_TYPES =["Check", "Credit card", "Purchase order"]

  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      # keep line item from being destroyed when we delete cart
      item.cart_id = nil
      # add each item to order's collection of line_items
      line_items << item
    end
  end
end
