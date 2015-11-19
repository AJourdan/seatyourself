class RestaurantsController < ApplicationController

# aaaaa
	def create
		@restaurant = Restaurant.new(:name, :address, :phone_number, :type_of_cuisine)
	end

	def new
		
	end


# aaaaa
	def index
		@restaurants = Restaurant.all
	end






	private
	def restaurant_params
		params.require(:restaurant).permit(:name, :address, :phone_number, :year_of_cuisine )
	end


end



