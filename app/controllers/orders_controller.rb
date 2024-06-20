class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render :index 
  end

  def create
    @order = Order.create(
      calculated_subtotal = 0
      carted_products = CartedProduct.where(user_id: current_user.id, status: 'carted')
      carted_products.each do |cp|
        calculated_subtotal += cp.quantity * cp.product.price
      end

      p calculated_subtotal
      calculated_tax = calculated_subtotal * 0.09
      calculated_total = calculated_subtotal + calculated_tax
      p calculated_tax
      p calculated_total

      @order = Order.new(
        user_id: current_user.id, 
        subtotal: calculated_subtotal,
        tax: calculated_tax, 
        total: calculated_total
    )
    @order.save
    render :show
  end
end 
