class Product < ActiveRecord::Base
  attr_accessible :title, :price, :description, :image_url
end
