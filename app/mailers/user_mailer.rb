class UserMailer < ActionMailer::Base
  default from: "5dteamcore@gmail.com"

  def welcome_email(user)
        @user = "5dteamcore@gmail.com"
        mail(to: @user, subject: 'Welcome to my site')
  end

end
