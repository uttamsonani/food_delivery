class ReservationMailer < ApplicationMailer

  def create_reservation
    @user = params[:user]
    @reservation = params[:reservation]
    @greeting = "Hi"
    
    mail to: email_address_with_name(@reservation.email, @reservation.name), subject: "About Your Created Reservavtion"
  end

  def update_reservation
    @user = params[:user]
    @reservation = params[:reservation]
    @greeting = "Hi"
    
    mail to: email_address_with_name(@reservation.email, @reservation.name), subject: "About Your Updated Reservavtion"
  end

  def delete_reservation
    @user = params[:user]
    @reservation = params[:reservation]
    @greeting = "Hi"
    
    mail to: email_address_with_name(@reservation.email, @reservation.name), subject: "About Your Cancle Reservavtion"
  end

end
