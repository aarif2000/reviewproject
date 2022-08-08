class WelcomeMailer < ApplicationMailer

  def send_greetings(user)
    @user= user

    mail to: @user.email, subject: "Thanks for signing up on our website"
  end
end
