# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Team.destroy_all
Membership.destroy_all


puts "Start seeding users..."

User.create(first_name: "Eriko", last_name: "Kohatsu", email: "eriko@teamind.com", password: "testing")
User.create(first_name: "Ari", last_name: "Swedberg", email: "ari@teamind.com", password: "testing")
User.create(first_name: "Hellen", last_name: "van der Kroef", email: "hellen@teamind.com", password: "testing")
User.create(first_name: "Graciella", last_name: "Dharmawan", email: "graciella@teamind.com", password: "testing")

puts "done seeding users!"

puts "Start seeding teams..."

Team.create(name: "Team 1", description: "We are team of like-minded coders from The Hague.")
Team.create(name: "Team 2", description: "We are team of like-minded coders from Lyon.")
Team.create(name: "Team 3", description: "We are team of like-minded coders from Maastricht.")
Team.create(name: "Team 4", description: "We are team of like-minded coders from Frankfurt.")

puts "done seeding teams!"

puts "Start seeding memberships..."

Membership.create(user: User.find(1), team: Team.find(1), owner: false, status: 0)
Membership.create(user: User.find(1), team: Team.find(2), owner: true, status: 1)
Membership.create(user: User.find(1), team: Team.find(3), owner: false, status: 1)
Membership.create(user: User.find(1), team: Team.find(4), owner: false, status: 1)

Membership.create(user: User.find(2), team: Team.find(1), owner: true, status: 1)
Membership.create(user: User.find(2), team: Team.find(2), owner: false, status: 0)
Membership.create(user: User.find(2), team: Team.find(3), owner: false, status: 1)
Membership.create(user: User.find(2), team: Team.find(4), owner: false, status: 1)

Membership.create(user: User.find(3), team: Team.find(1), owner: false, status: 1)
Membership.create(user: User.find(3), team: Team.find(2), owner: false, status: 0)
Membership.create(user: User.find(3), team: Team.find(3), owner: true, status: 1)
Membership.create(user: User.find(3), team: Team.find(4), owner: false, status: 1)

Membership.create(user: User.find(4), team: Team.find(1), owner: false, status: 0)
Membership.create(user: User.find(4), team: Team.find(2), owner: false, status: 1)
Membership.create(user: User.find(4), team: Team.find(3), owner: false, status: 1)
Membership.create(user: User.find(4), team: Team.find(4), owner: true, status: 1)


puts "done seeding memberships!"
