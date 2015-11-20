class ReservationsController < ApplicationController
end


 def create
    @reservation = @user.reservation.build(reservation_params)
    @reservation.user = current_user

    if @rerservation.save
      redirect_to reservations_path, notice: 'Reservation successfully made'
    else
      render ''
    end
  end

