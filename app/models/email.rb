class Email < ActiveRecord::Base
	attr_accessible :from, :to, :mail
end
