class Order < ActiveRecord::Base
  attr_accessible :dispatch_date, :total_price, :user_id
  
  belongs_to :user
  
  has_many :line_items
  has_many :products, :through => :line_items
  
  attr_accessible :line_items_attributes
  
  accepts_nested_attributes_for :line_items
  
  
  def get_total
  	price = 0
  	line_items.each do |li|
  		price = price + li.total
  	end
  	return price
  end
  
  #has_and_belongs_to_many :products
  before_save :set_total_price
  
  private
  
  def set_total_price
  	Rails.logger.info "-------------- Setting total price before saving the order... ----------"
  	p "############### Setting total price before saving the order... ###################"
  	self.total_price = get_total
  	return true
  end
end
