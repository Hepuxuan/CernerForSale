class UserMailer < ActionMailer::Base
  default from: 'noreply@pacific-hamlet-3033.herokuapp.com'
 
  def password_email(user, new_password)
    @user = user
    @new_password = new_password
    mail(to: @user.email, subject: 'New Password From Ceraigslist')
  end

  def alert_email(user, product_infos)
  	@user = user
  	@product_infos = product_infos
    puts "#{user.email}"
  	mail(to: user.email, subject: 'We found something for you')
  end
end