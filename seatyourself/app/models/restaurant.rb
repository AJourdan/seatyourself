class Restaurant < ActiveRecord::Base
	has_many :reservations

  has_many :users, through: :reservations
  belongs_to :catagory

  belongs_to :owner, class_name: "User", foreign_key: "user_id" # this needs `user_id` column

end

