class User < ActiveRecord::Base
	has_many :reservations
  has_many :restaurants, through: :reservations

  has_one :owned_restaurant, class_name: "Restaurant"
end
