# Preview all emails at http://localhost:3000/rails/mailers/reservation_mailer
class ReservationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/reservation_mailer/create_reservation
  def create_reservation
    ReservationMailer.create_reservation
  end

  # Preview this email at http://localhost:3000/rails/mailers/reservation_mailer/update_reservation
  def update_reservation
    ReservationMailer.update_reservation
  end

  # Preview this email at http://localhost:3000/rails/mailers/reservation_mailer/delete_reservation
  def delete_reservation
    ReservationMailer.delete_reservation
  end

end
