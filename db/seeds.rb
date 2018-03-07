# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create(""name: 'Star Wars' , ""name: 'Lord of the Rings' ])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Cat.destroy_all

c1 = Cat.create!(birthdate: '1990/03/02', color: 'calico', name: Faker::Name.unique.name, sex: 'F', description: 'enjoys antagonizing the parakeet')
c2 = Cat.create!(birthdate: '1991/03/02', color: 'white', name: Faker::Name.unique.name, sex: 'F', description: 'enjoys antagonizing the dog')
c3 = Cat.create!(birthdate: '1992/03/02', color: 'black', name: Faker::Name.unique.name, sex: 'F', description: 'enjoys antagonizing the lawn mower')
c4 = Cat.create!(birthdate: '1993/03/02', color: 'orange', name: Faker::Name.unique.name, sex: 'F', description: 'enjoys ripping the curtains to shreds')
c5 = Cat.create!(birthdate: '1994/03/02', color: 'tabby', name: Faker::Name.unique.name, sex: 'F', description: 'enjoys giving the fish a heart attack')
