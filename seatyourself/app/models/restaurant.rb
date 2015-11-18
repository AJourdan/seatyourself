class Restaurant < ActiveRecord::Base
	has_many :reservations
	has_many :users, through :reservations
	belongs_to :owner, class_name: "user", foreign_key "user_id"
	belongs_to :category
	
end
