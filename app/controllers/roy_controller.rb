class RoyController < ApplicationController
allow_cors :index, :other_methods
respond_to :json
    
  def royemail
      p params
      UserMailer.welcome_email(params[:name],params[:phone],params[:email],params[:content]).deliver
      render :json => {:name => "David"}.to_json
      
  end

    
end
