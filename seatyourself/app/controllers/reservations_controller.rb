class ReservationsController < ApplicationController


def new
	@restaurant = Restaurant.find(params[:restaurant_id])
	@reservation = Reservation.new
end

 def create
 	@restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = @restaurant.reservations.build(params[:reservation_params])
    @reservation.user = current_user

    if @reservation.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'new'
    end
  end

  private
  def reservation_params
  	params.require(:reservation).permit(:number_of_guests, :date_time)
  end
end
