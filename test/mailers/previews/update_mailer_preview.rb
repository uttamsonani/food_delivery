# Preview all emails at http://localhost:3000/rails/mailers/update_mailer
class UpdateMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/update_mailer/new_feature
  def new_feature
    UpdateMailer.new_feature
  end

end
