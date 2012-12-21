class Product < ActiveRecord::Base
  attr_accessible :desc, :name, :price
  
  validates :name, :price , :presence => true
  
  has_many :line_items
  has_many :orders, :through => :line_items
end
