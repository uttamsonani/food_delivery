class UserMailer < ApplicationMailer

  def create_noti
    @user = params[:user]
    @greeting = "Hi"
    
    mail to: email_address_with_name(@user.email, @user.full_name), subject: "About Your Created Account"
    # @user.email
  end

  def update_noti
    @user = params[:user]
    @greeting = "Hi"

    # attachments.inline["/icons/logo2.png"] = File.read("#{Rails.root}/app/assets/images/icons/logo2.png")
    # mail to: @user.email, subject: "About Your Updated Account"
   mail to: email_address_with_name(@user.email, @user.full_name), subject: "About Your Updated Account"
  end

  def delete_noti
    @user = params[:user]
    @greeting = "Hi"
    
    mail to: email_address_with_name(@user.email, @user.full_name), subject: "About Your Deleted Account"
  end
end
