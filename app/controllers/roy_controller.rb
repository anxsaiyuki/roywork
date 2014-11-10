class RoyController < ApplicationController
respond_to :json
    
  def royemail
      UserMailer.welcome_email("anxsaiyuki@gmail.com").deliver

      respond_to do |format|
            format.json { render json: {:msg => 'has this user'} }
      end
      
  end

    
end
