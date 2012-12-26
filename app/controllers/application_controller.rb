class ApplicationController < ActionController::Base
  protect_from_forgery
  
  rescue_from CanCan::AccessDenied, :with => :access_denied
  
  before_filter :show_cookies
  
  after_filter :set_cookies
  
  
  
  private 
  
  def show_cookies
  	#Rails.logger.info "******************* #{request.headers['HTTP_COOKIE']} **********"
  end
  
  def set_cookies
  	cookies[:my_cookie] = "test";
  end
  
  def access_denied
  	flash[:notice] = "You are not allowed to do this!"
  	redirect_to root_url
  end
  
  
end
