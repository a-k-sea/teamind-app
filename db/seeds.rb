  Answer.destroy_all
Membership.destroy_all
User.destroy_all
TeamQuestion.destroy_all
Team.destroy_all
Question.destroy_all

puts "Start seeding users..."
photo = URI.open('https://avatars.githubusercontent.com/u/82027970?v=4')
user1 = User.create(first_name: "Eriko", last_name: "Kohatsu", email: "eriko@teamind.com", password: "testing", admin: true)
user1.photo.attach(io: photo, filename: 'eriko.png', content_type: 'image/png')
photo = URI.open('https://avatars.githubusercontent.com/u/80180073?v=4')
user2 = User.create(first_name: "Ari", last_name: "Swedberg", email: "ari@teamind.com", password: "testing", admin: true)
user2.photo.attach(io: photo, filename: 'eriko.png', content_type: 'image/png')
photo = URI.open('https://avatars.githubusercontent.com/u/80773437?v=4')
user3 = User.create(first_name: "Hellen", last_name: "van der Kroef", email: "hellen@teamind.com", password: "testing", admin: true)
user3.photo.attach(io: photo, filename: 'eriko.png', content_type: 'image/png')
photo = URI.open('https://avatars.githubusercontent.com/u/30746274?v=4')
user4 = User.create(first_name: "Graciella", last_name: "Dharmawan", email: "graciella@teamind.com", password: "testing", admin: true)
user4.photo.attach(io: photo, filename: 'eriko.png', content_type: 'image/png')
puts "done seeding users!"

puts "Start seeding teams..."
team1 = Team.create(name: "The Hague Heroes", description: "We are team of like-minded coders from The Hague.")
team2 = Team.create(name: "Lyon Lions", description: "We are team of like-minded coders from Lyon.")
team3 = Team.create(name: "Maastricht Masters", description: "We are team of like-minded coders from Maastricht.")
team4 = Team.create(name: "Frankfurt Foodies", description: "We are team of like-minded coders from Frankfurt.")
puts "done seeding teams!"

puts "Start seeding memberships..."
Membership.create(user: user1, team: team1, owner: false, status: 0)
Membership.create(user: user1, team: team2, owner: true, status: 1)
Membership.create(user: user1, team: team3, owner: false, status: 1)
Membership.create(user: user1, team: team4, owner: false, status: 1)

Membership.create(user: user2, team: team1, owner: true, status: 1)
Membership.create(user: user2, team: team2, owner: false, status: 0)
Membership.create(user: user2, team: team3, owner: false, status: 1)
Membership.create(user: user2, team: team4, owner: false, status: 1)

Membership.create(user: user3, team: team1, owner: false, status: 1)
Membership.create(user: user3, team: team2, owner: false, status: 0)
Membership.create(user: user3, team: team3, owner: true, status: 1)
Membership.create(user: user3, team: team4, owner: false, status: 1)

Membership.create(user: user4, team: team1, owner: false, status: 0)
Membership.create(user: user4, team: team2, owner: false, status: 1)
Membership.create(user: user4, team: team3, owner: false, status: 1)
Membership.create(user: user4, team: team4, owner: true, status: 1)
puts "done seeding memberships!"

puts "Start seeding questions..."
question1 = Question.create(custom: false, content: "What time do you prefer to work?", category: "Working hours")
question2 = Question.create(custom: false, content: "What do you like to do after work?", category: "Hobbies")
question3 = Question.create(custom: false, content: "How do you prefer to be contacted?", category: "Communication")
question4 = Question.create(custom: false, content: "When do you prefer to receive feedback?", category: "Feedback")
question5 = Question.create(custom: false, content: "How do you prefer to receive feedback?", category: "Feedback")
question6 = Question.create(custom: false, content: "What is your work space situation?", category: "Work style")
question7 = Question.create(custom: false, content: "On what kind of tasks do you like to work?", category: "Work style")
question8 = Question.create(custom: false, content: "Do you prefer to work together or alone?", category: "Work style")
question9 = Question.create(custom: false, content: "What is your preferred team meeting platform?", category: "Communication")
question10 = Question.create(custom: false, content: "When is the ideal time for you to take your lunch break?", category: "Working hours")

puts "done seeding questions!"

puts "Start seeding answers..."
Answer.create(content: "I prefer to start in the early morning", question: question1)
Answer.create(content: "I prefer to start in the late morning", question: question1)
Answer.create(content: "I prefer to start in the afternoon", question: question1)
Answer.create(content: "I don't have a preference", question: question1)

Answer.create(content: "Go for drinks with friends", question: question2)
Answer.create(content: "Relax & have some me-time", question: question2)
Answer.create(content: "Sports", question: question2)
Answer.create(content: "Spend time with my family", question: question2)

Answer.create(content: "Email", question: question3)
Answer.create(content: "Slack", question: question3)
Answer.create(content: "Phone call", question: question3)

Answer.create(content: "As soon as possible", question: question4)
Answer.create(content: "Schedule a meeting with me after a day", question: question4)
Answer.create(content: "Schedule a meeting with me after a week", question: question4)

Answer.create(content: "Through a video call", question: question5)
Answer.create(content: "Written in an email", question: question5)

Answer.create(content: "Quiet with minimal interuptions", question: question6)
Answer.create(content: "Quiet with many interuptions", question: question6)
Answer.create(content: "Noisy with minimal interuptions", question: question6)
Answer.create(content: "Noisy with many interuptions", question: question6)

Answer.create(content: "One task that will take months", question: question7)
Answer.create(content: "One task that will take around a week", question: question7)
Answer.create(content: "One task per day", question: question7)
Answer.create(content: "Smaller tasks so that I can complete many in a day", question: question7)

Answer.create(content: "I prefer working by myself", question: question8)
Answer.create(content: "I like working with one other colleague", question: question8)
Answer.create(content: "I prefer to work with multiple colleagues", question: question8)

Answer.create(content: "Zoom with everyone having their camera on", question: question9)
Answer.create(content: "Zoom with anyone who wants to having their camera on", question: question9)
Answer.create(content: "No video calls please, a phone conference is fine", question: question9)

Answer.create(content: "12am - 1pm", question: question10)
Answer.create(content: "1pm - 2pm", question: question10)
Answer.create(content: "2pm - 3pm", question: question10)
Answer.create(content: "I don't really care", question: question10)
puts "done seeding answers!"



puts "Start seeding team questions..."
TeamQuestion.create(team: team1, question: question1)
TeamQuestion.create(team: team1, question: question2)
TeamQuestion.create(team: team1, question: question3)
TeamQuestion.create(team: team1, question: question4)
TeamQuestion.create(team: team1, question: question5)

TeamQuestion.create(team: team2, question: question1)
TeamQuestion.create(team: team2, question: question2)
TeamQuestion.create(team: team2, question: question3)
TeamQuestion.create(team: team2, question: question4)
TeamQuestion.create(team: team2, question: question5)

TeamQuestion.create(team: team3, question: question6)
TeamQuestion.create(team: team3, question: question7)
TeamQuestion.create(team: team3, question: question8)
TeamQuestion.create(team: team3, question: question9)
TeamQuestion.create(team: team3, question: question10)

TeamQuestion.create(team: team4, question: question6)
TeamQuestion.create(team: team4, question: question7)
TeamQuestion.create(team: team4, question: question8)
TeamQuestion.create(team: team4, question: question9)
TeamQuestion.create(team: team4, question: question10)
puts "done seeding team questions!"
