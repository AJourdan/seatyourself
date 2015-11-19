class RestaurantsController < ApplicationController

	def create
		@restaurant = Restaurant.new(:name, :address, :phone_number, :type_of_cuisine)
	end

	def new
		
	end
end
