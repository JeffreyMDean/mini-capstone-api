class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def create
    @carted_products = CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      status: params[:status],
      order_id: params[:order_id],
      quantity: params[:quantity],
    )
    @carted_product.save 
  end

  def index
    @carted_products = CartedProducts.where(user_id: current_user.id, status: 'carted')
    render :index
  end
end
