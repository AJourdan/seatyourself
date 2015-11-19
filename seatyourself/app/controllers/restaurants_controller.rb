class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all
	end






	private
	def restaurant_params
		params.require(:restaurant).permit(:name, :address, :phone_number, :year_of_cuisine )
	end

end



