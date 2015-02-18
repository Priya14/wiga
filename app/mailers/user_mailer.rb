class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: 'shanmugapriya@ostryalabs.com', subject: 'Mail From Visitors')
  end
end
