class Order < ApplicationRecord
    belongs_to :user

  validates :billing_name, presence: true
  validates :billing_address, presence: true
  validates :shipping_name, presence: true
  validates :shipping_address, presence: true
  def show
    @order = Order.find(params[:id])
    @product_lists = @order.product_lists
  end
end
