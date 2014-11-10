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
    
    
   # allow_cors takes in arbitrarily many symbols representing actions that
   # CORS should be enabled for
   def self.allow_cors(*methods)
     before_filter :cors_before_filter, :only => methods
 
     # Rails recommends to use :null_session for APIs
     protect_from_forgery with: :null_session, :only => methods
   end

  def cors_before_filter
    # Check that the `Origin` field matches our front-end client host
    if /\Ahttps?:\/\/localhost:8000\z/ =~ request.headers['Origin']
      headers['Access-Control-Allow-Origin'] = request.headers['Origin']
    end
  end
end
