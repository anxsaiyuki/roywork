class UserMailer < ActionMailer::Base
  default from: "5dteamcore@gmail.com"

  def welcome_email(name,number,email,content)
        @user = "5dteamcore@gmail.com"
        @name = name
        @number = number
        @email = email
        @content = content
        mail(to: @user, subject: 'Welcome to my site')
  end

end
