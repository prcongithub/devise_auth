class Order < ActiveRecord::Base
  attr_accessible :dispatch_date, :total_price, :user_id
  
  belongs_to :user
  
  has_many :line_items
  has_many :products, :through => :line_items
  
  attr_accessible :line_items_attributes
  
  accepts_nested_attributes_for :line_items
end
