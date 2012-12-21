class ApplicationController < ActionController::Base
  protect_from_forgery
  
  
  before_filter :show_cookies
  
  after_filter :set_cookies
  
  
  
  private 
  
  def show_cookies
  	Rails.logger.info "******************* #{request.headers['HTTP_COOKIE']} **********"
  end
  
  def set_cookies
  	cookies[:my_cookie] = "test";
  end
  
  
end
