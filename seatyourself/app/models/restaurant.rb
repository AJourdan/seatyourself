class Restaurant < ActiveRecord::Base
	has_many :reservations
<<<<<<< HEAD
	has_many :users, through: :reservations

	belongs_to :user 
	# belongs_to :owner, class_name: "User", foreign_key "user_id"
	belongs_to :category

	validates_uniqueness_of :name

	def Restaurant.nameMaker
        loop do
            name = Restaurant.newName
            break if Restaurant.find_by(name: name).nil?
        end
        return name
    end

    def Restaurant.newName
        Faker::Company.name
    end 


 



end

