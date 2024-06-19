class CartedProductsController < ApplicationController
  before_action :authenticate_user

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
    @user_carted_products = current_user.carted_products 
    @carted_products = []
    @user_carted_products.each do |carted_product|
    if carted_product.status == "carted"
      @carted_products << carted_product 
    end
  end
end
end
