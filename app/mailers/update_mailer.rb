class UpdateMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.update_mailer.new_feature.subject
  #
  def new_feature
    @greeting = "Hi"
    
    # Sending Email to all Users
    users = User.all
    @bcc = User.all.pluck(:email)
    mail( bcc: @bcc, subject: "About New Feature" )

    # users.each do |user|
    #   mail to: email_address_with_name(user.email, user.full_name), subject: 'New Update'
    # end
    # mail to: email_address_with_name(user, @user.full_name),subject: 'New Update'
  end

end
