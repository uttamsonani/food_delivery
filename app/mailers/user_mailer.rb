class UserMailer < ApplicationMailer

  def create_noti
    @user = params[:user]
    @greeting = "Hi"
    
    mail to: @user.email , subject: "About Your Created Account"
    # @user.email
  end

  def update_noti
    @user = params[:user]
    @greeting = "Hi"

    # attachments.inline["avatar-01.jpg"] = File.read("#{Rails.root}/app/assets/images/avatar-01.jpg")
    mail to: @user.email, subject: "About Your Updated Account"
  end

  def delete_noti
    @user = params[:user]
    @greeting = "Hi"
    
    mail to:  @user.email, subject: "About Your Deleted Account"
  end
end
