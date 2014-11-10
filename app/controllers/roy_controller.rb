class RoyController < ApplicationController
respond_to :json
    
  def royemail
      UserMailer.welcome_email("anxsaiyuki@gmail.com").deliver
      render :json =>  {"name": "Andrew"}
      
  end

    
end
