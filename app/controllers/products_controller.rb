class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show] #opposite would be only: [:create, :update, :destroy]
  def index
    if params[:name]
      category = Category.find_by(name: params[:name])
      @products = category.products
    else
      @products = Product.all
    end
    render :index
  end

  def show     
    @product = Product.find_by(id: params[:id])
    render :show 
  end

  def create
    @product = Product.create!(
      name: params[:name],
      price: params[:price],  
      description: params[:description],
      supplier_id: params[:supplier_id]
      )
    render :show
  end

  def update       # fix?
    @product = Product.find_by(id: params[:id])
    product.update(
      name: params[:name] = @product.name,
      price: params[:price] || @product.price,
      description: params[:description] || @product.description
    )
    @product.save 
    render :show
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "Product destroyed"}
  end

end

  