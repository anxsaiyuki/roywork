class ApplicationController < ActionController::Base
  

  helper :all
  before_filter :prepare_for_mobile
  after_filter :set_access_control_headers
  
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
    
      

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Request-Method'] = '*'
  end
end
