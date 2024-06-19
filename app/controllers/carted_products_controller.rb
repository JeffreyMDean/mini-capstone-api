class CartedProductsController < ApplicationController
  def create
    @carted_products = CartedProduct.create(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
      order_id: nil,
    )
    render json: { message: "hello" }
  end

  def index
    @carted_products = CartedProduct.all
    render json: { message: "hello" }
  end
end