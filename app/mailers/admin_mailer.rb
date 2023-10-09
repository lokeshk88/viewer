class AdminMailer < ApplicationMailer
	default from: 'notifications@example.com'

  def welcome_email
    @admin = params[:admin]
    @url  = 'http://gmail.com/'
    mail(to: @admin.email, subject: 'Welcome to My Awesome Site')
  end
end
