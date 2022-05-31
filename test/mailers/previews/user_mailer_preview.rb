# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/create_noti
  def create_noti
    UserMailer.create_noti
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/update_noti
  def update_noti
    UserMailer.update_noti
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/delete_noti
  def delete_noti
    UserMailer.delete_noti
  end

end
