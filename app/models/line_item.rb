class LineItem < ActiveRecord::Base
  attr_accessible :order_id, :product_id, :quantity, :rate
  
  validates :product_id, :quantity, :rate, :presence => true
  
  belongs_to :order
  belongs_to :product
  
  def total
  	return self.rate * self.quantity
  end
  
end
