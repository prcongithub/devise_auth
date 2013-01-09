class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation
  attr_accessible :name, :phone, :address, :remember_me
  
  has_many :orders
  has_many :products, :through => :orders
  
  def self.inheritance_column
  	return "role"
  end
  
end
