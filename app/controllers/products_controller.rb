class ProductsController < ApplicationController

  def index
    @products = Product.all
    render template: "products/index"
  end

  def all
    @products = Product.all
    render template: "products/index"
  end

  def first
    @product = Product.find_by(id: 1)
    render template: "products/show"
  end
end 