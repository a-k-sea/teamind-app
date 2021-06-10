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

User.create(first_name: "Eriko", last_name: "Kohatsu", email: "eriko@teamind.com", password: "testing", admin: true)
User.create(first_name: "Ari", last_name: "Swedberg", email: "ari@teamind.com", password: "testing", admin: true)
User.create(first_name: "Hellen", last_name: "van der Kroef", email: "hellen@teamind.com", password: "testing", admin: true)
User.create(first_name: "Graciella", last_name: "Dharmawan", email: "graciella@teamind.com", password: "testing", admin: true)

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

puts "Start seeding questions..."

Question.create(custom: false, content: "What time do you prefer to work?", category: "Working hours") # Q1
Question.create(custom: false, content: "What do you like to do after work?", category: "Hobbies") # Q2
Question.create(custom: false, content: "How do you prefer to be contacted?", category: "Communication") # Q3
Question.create(custom: false, content: "When do you prefer to receive feedback?", category: "Feedback") # Q4
Question.create(custom: false, content: "How do you prefer to receive feedback?", category: "Feedback") # Q5
Question.create(custom: false, content: "What is your work space situation?", category: "Work style") # Q6
Question.create(custom: false, content: "How do you prefer to work?", category: "Work style") # Q7
Question.create(custom: false, content: "Would you describe yourself as rather extroverted or introverted?", category: "Personality") # Q8
Question.create(custom: false, content: "Does being around people energise you or cost you energy?", category: "Personality") # Q9
Question.create(custom: false, content: "Do you prefer to work together or alone?", category: "Work style") # Q10
Question.create(custom: false, content: "How do you like starting your day?", category: "Work style") # Q11
Question.create(custom: false, content: "How do you like ending your day?", category: "Work style") # Q12

puts "done seeding questions!"

puts "Start seeding answers..."

Answer.create(content: "I prefer to start in the early morning", question: Question.find(1))
Answer.create(content: "I prefer to start in the late morning", question: Question.find(1))
Answer.create(content: "I prefer to start in the afternoon", question: Question.find(1))
Answer.create(content: "I don't have a preference", question: Question.find(1))

Answer.create(content: "Go for drinks with friends", question: Question.find(2))
Answer.create(content: "Relax & have some me-time", question: Question.find(2))
Answer.create(content: "Sports", question: Question.find(2))

Answer.create(content: "Email", question: Question.find(3))
Answer.create(content: "Slack", question: Question.find(3))
Answer.create(content: "Phone call", question: Question.find(3))

Answer.create(content: "As soon as possible", question: Question.find(4))
Answer.create(content: "Schedule a meeting with me after a day", question: Question.find(4))
Answer.create(content: "Schedule a meeting with me after a week", question: Question.find(4))

Answer.create(content: "through a video call", question: Question.find(5))
Answer.create(content: "written in an email", question: Question.find(5))

Answer.create(content: "Quiet with minimal interuptions", question: Question.find(6))
Answer.create(content: "Quiet with many interuptions", question: Question.find(6))
Answer.create(content: "Noisy with minimal interuptions", question: Question.find(6))
Answer.create(content: "Noisy with many interuptions", question: Question.find(6))

Answer.create(content: "One task that will take months", question: Question.find(7))
Answer.create(content: "One task that will take around a week", question: Question.find(7))
Answer.create(content: "One task per day", question: Question.find(7))
Answer.create(content: "Smaller tasks so that I can complete many in a day", question: Question.find(7))

Answer.create(content: "Rather introverted", question: Question.find(8))
Answer.create(content: "Rather extroverted", question: Question.find(8))

Answer.create(content: "It energizes me", question: Question.find(9))
Answer.create(content: "It costs me energy", question: Question.find(9))

Answer.create(content: "I prefer working by myself", question: Question.find(10))
Answer.create(content: "I like working with one other colleague", question: Question.find(10))
Answer.create(content: "I prefer to work with multiple colleagues", question: Question.find(10))

Answer.create(content: "With a meeting", question: Question.find(11))
Answer.create(content: "Continuing work", question: Question.find(11))

Answer.create(content: "With a meeting", question: Question.find(12))
Answer.create(content: "Continuing work", question: Question.find(12))

puts "done seeding answers!"
