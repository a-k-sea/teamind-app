class UserMailer < ApplicationMailer
  default from: 'info@teamind.club'

  def welcome_email
    @user = params[:user]
    @url  = 'https://www.teamind.club/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to teamind!')
  end

  def invitation_email
    @user = params[:user]
    @url = 'https://www.teamind.club/users/sign_up'
    mail(to: @user.email, subject: 'You have been invited to teamind!')
  end
end
