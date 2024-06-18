class ApplicationRecord < ActiveRecord::Base
  products has_many :category_products 
  primary_abstract_class
end
