# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new
user.name = 'admin'
user.email = 'admin@mail.com'
user.password = '111111'
user.save!

user2 = User.new
user2.name = 'admin2'
user2.email = 'admin2@mail.com'
user2.password = '111111'
user2.save!