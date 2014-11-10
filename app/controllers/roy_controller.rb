class RoyController < ApplicationController
respond_to :json
    
  def royemail
      p params
      UserMailer.welcome_email("anxsaiyuki@gmail.com").deliver
      render :json => {:name => "David"}.to_json
      
  end

    
end
