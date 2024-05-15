class ProductsController < ApplicationController
  def index
    @products = Product.all 
    render template: "products/index"
  end

  def show
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    render template: "products/show"
  end

  def create
    @product = Product.new(name: params[:input_name], price: params[:input_price], image_url: params[:input_image_url], description: params[:input_description])
    @product.save
    render template: "products/show"
  end
end

  