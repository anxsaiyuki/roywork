class ApplicationController < ActionController::Base
  

  helper :all
  before_filter :prepare_for_mobile
  
  
  private 
  
  def mobile_device?
	if session[:mobile_param]
		session[:mobile_param] == "1"
	else
		request.user_agent =~ /Mobile|webOS/
	end
  end
  
  helper_method :mobile_device?
  
  def prepare_for_mobile
	session[:mobile_param] = params[:ua_] if params[:ua_]
	request.format = :mobile if mobile_device? && !request.xhr?
  end

end
