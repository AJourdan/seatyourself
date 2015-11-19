require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

test "two restaurants in the database" do
 assert_equal 2, Restaurant.count
end

test "large restaurant capacity"
 Restaurant.first.capacity
 assert_equal 100
end

test "restaurant is not available if there isn't enough room"
 Factorygirl.create(:reservation, :restaurant @restaurant, party_size:99)
 assert_not @restaurant.available?	(10)
end