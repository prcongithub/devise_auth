class Product < ActiveRecord::Base
  attr_accessible :desc, :name, :price

  validates :name, :price , :presence => true
  
  has_many :line_items
  has_many :orders, :through => :line_items
  
  #has_and_belongs_to_many :orders
  

	before_validation :before_validation_callback
	after_validation :after_validation_callback
	before_save :before_save_callback
	before_create :before_create_callback
	before_update :before_update_callback
	
	after_create :after_create_callback
	after_update :after_update_callback
	after_save :after_save_callback
	
	after_commit :after_commit_callback
	
	after_rollback :after_rollback_callback
	
	after_find :after_find_callback
	after_initialize :after_initialize_callback
	
	before_destroy :before_destroy_callback
	after_destroy :after_destroy_callback
	
	around_save :around_save_callback
    
  private
  
  def before_validation_callback
  	#self.name ||= "Default Product"
  	#self.price ||= 0
  	puts "Inside before_validation_callback"
  	return true
  end
  
  def after_validation_callback
  	puts "Inside after_validation_callback"
  	return true
  end
  
  def before_save_callback
  	#self.save # this will trigger recursive callbacks
  	puts "Inside before_save_callback"
  	return true
  end
  
  def before_create_callback
  	puts "Inside before_create_callback"
  	return true
  end
  
	def before_update_callback
  	puts "Inside before_update_callback"
  	return true
  end
  
  def after_create_callback
  	puts "Inside after_create_callback"
  	return true
  end
  
	def after_update_callback
  	puts "Inside after_update_callback"
  	return true
  end
  
  def after_save_callback
  	puts "Inside after_save_callback"
  	return true
  end
  
  
  def after_commit_callback
  	puts "Inside after_commit_callback"
  	return true
  end
  
  def after_rollback_callback
  	puts "Inside after_rollback_callback"
  	return true
  end
  	
  
  def after_find_callback
  	puts "Inside after_find_callback"
  	return true
  end
  
  def after_initialize_callback	
  	puts "Inside after_initialize_callback"
  	return true
  end
  
  def before_destroy_callback	
  	puts "Inside before_destroy_callback"
  	return true
  end
  
  def after_destroy_callback	
  	puts "Inside after_destroy_callback"
  	return true
  end
  
  def around_save_callback
  	puts "Inside around_save_callback before yield"
  	yield # yield is required in around callbacks, otherwise it will not execute the intended operation i.e. save operation in this callback
  	puts "Inside around_save_callback after yield"
  end
end
