class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :category_products 
  has_many :category_products
  has_many :categories, through: :category_products
  def is_discounted?
    price <= 10
  end
  
  def tax
    price * 0.09
  end

  def total
    total = price + tax
  end
end