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

  def update
    product = Product.find_by(id: params[:id])
    product.title = "pencil"
    product.name = "pencil"
    product.price = 1
    product.image_url = "https://belusaweb.s3.amazonaws.com/product-images/colors/hex-golf-pencils-with-erasers-ak61250-yellow.jpg"
    product.description = "This is used for writing."
  end
end

  