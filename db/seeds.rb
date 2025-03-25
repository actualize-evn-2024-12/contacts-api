# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# names = ['elvira', 'eddy', 'aaron', 'erin']

# 100.times do
contact = Contact.new(
  first_name: "elvira",
  last_name: "esposito",
  email: "elvira@gmail.com",
  phone_number: "567898765"
)
contact.save
# end


# p "hellooooo"

# require 'faker'

# 100.times do
#   contact = Contact.new(
#     first_name: Faker::Name.first_name, 
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     phone_number: Faker::PhoneNumber.phone_number
#   )

#   contact.save
# end
# p contact
# p Faker::Name.first_name      #=> "Christophe Bartell"
# p Faker::Name.last_name      #=> "Christophe Bartell"
