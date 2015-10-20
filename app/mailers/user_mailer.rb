class UserMailer < ApplicationMailer
  default from: "defaut_setup@example.com"

  def signup_confirmation(user)
    @user = user

    mail to: user.email, subject: "Welcome"
  end
end
