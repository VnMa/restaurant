class UserMailer < ApplicationMailer
  default from: 'akira.an111@gmail.com'

  def welcome_email
    @user = {email: 'akira.an111@gmail.com', name: 'An Vo'}
    @url = 'http://example.com/login'
    mail(to: @user.dig(:email), subject: 'Welcome to My Awesome Site')
  end
end
