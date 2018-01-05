class UserMailer < ApplicationMailer
  default from: 'no-reply@99cats.com'

  def welcome_email(user)
    @user = user
    @url = 'http://99cats.com/login'
    mail(to: user, subject: 'Welcome to 99 Cats')
  end
end
