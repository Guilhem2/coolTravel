# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
User.destroy_all
Booking.destroy_all
Travel.destroy_all
Agency.destroy_all

puts "Creating users..."
user_1 = User.create!(first_name: "John", last_name: "Doe", phone_number: "123456789", email: "john.doe@cooltravel.com")
user_1.save!
puts "Users created!"

puts "Creating agencies..."
agency_1 = Agency.create!(name: "Spanish travel", address: "Calle Santa Maria", phone_number: "987456321")
agency_1.save!
puts "Agencies created!"

puts "Creating travels..."
madrid = Travel.create!(name: "Madrid", country: "Spain", description: "Amazing travel to Madrid!", price: 500, agency: agency_1)
madrid.save!
barcelona = Travel.create!(name: "Barcelona", country: "Spain", description: "Wonderful travel to Barcelona!", price: 400, agency: agency_1)
barcelona.save!
puts "Travels created!"

puts "Creating reviews..."
review_1 = Review.create!(rating: 5, comment: "What an amazing trip!", travel: madrid, user: user_1)
review_1.save!
puts "Reviews created!"
