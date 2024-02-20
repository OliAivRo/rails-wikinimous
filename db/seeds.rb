# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

Faker::Name.name      #=> "Christophe Bartell"

Faker::Address.full_address #=> "5479 William Way, East Sonnyhaven, LA 63637"

require "faker"

10.times do
  article = Article.new(
    title: Faker::Dessert.topping,
    content: "#{Faker::Games::Minecraft.achievement} #{Faker::Games::Pokemon.name}"
  )
  article.save!
end
