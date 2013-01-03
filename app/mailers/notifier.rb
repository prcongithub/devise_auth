class Notifier < ActionMailer::Base
  default from: "prashant.chaudhari89@gmail.com"
  
  self.delivery_method = :active_record
  
  def order_confirmation_to_user(order)
  	@order = order
  	@user = @order.user
  	mail(:to => "#{@user.name} <#{@user.email}>", :cc => "admin@truespider.com", :bcc => "prashant@truespider.com", :subject => "Your order has been successfully placed!")
  end
  
  
end
