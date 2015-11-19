class Category < ActiveRecord::Base
  has_many :restaurants


  categories = [
    "Sushi",
    "Italian",
    "American",
    "Fine Dining",
    "Vegetarian",
    "Chinese",
    "Mexican"
  ]

  categories.each do |name|
    Category.create(:name => name)
  end

end



