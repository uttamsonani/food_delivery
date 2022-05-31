class UserMailer < ApplicationMailer

  def create_noti(user)
    @user = user
    @greeting = "Hi"
    

    mail to: User.first.email, subject: "About Your Created Account"
  end

  def update_noti
    @greeting = "Hi"
    

    mail to: @user.email, subject: "About Your Updated Account"
  end

  def delete_noti
    @greeting = "Hi"
    

    mail to:  @user.email, subject: "About Your Deleted Account"
  end
end
