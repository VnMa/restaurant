class ExampleMailer < ApplicationMailer
  default from: "akira.an111@gmail.com"

  def sample_email user
    @user = user
    mail to: @user.email, subject: 'Sample Email'
  end
end
