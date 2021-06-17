UserAnswer.destroy_all
Answer.destroy_all
Membership.destroy_all
User.destroy_all
Personality.destroy_all
TeamQuestion.destroy_all
Team.destroy_all
Question.destroy_all

puts "Start seeding personalities"
personality1 = Personality.create(abbreviation: 'INTJ', description: 'Introverted, Intuitive, Thinking, and Judging. INTJs are analytical team members who focus on strategy. They are often perceptive about systems and how to improve them. They are thoughtful and clear in their analysis, and good at defining team goals. They are capable of synthesizing ideas of some complexity, and often see clearly to a unifying plan of action. INTJs take a characteristically critical approach, and analyze ideas and proposals with a detached, objective logic. They want to be free to make improvements to existing systems, and do best on a team where change is favored.
INTJs are open to ideas, and will consider the perspectives of the team members with an even-handed approach. However, they are firm and clear in their logical analysis, and have little patience for nonsense. They are unlikely to offer support or assurance to teammates who they don’t perceive as useful contributors. They are persuasive in their reasoning and often get teammates on board based on the clarity of their ideas. However, they may have friction with team members who have a focus on relationships; the Mastermind seeks a free exchange of ideas, not a personal connection.', matches: [])

personality2 = Personality.create(abbreviation: 'INTP', description: 'Introverted, Intuitive, Thinking, and Perceiving. INTPs are thoughtful, analytical team members who contribute a deep understanding of complex problems. They are often most interested in the theoretical questions behind the team’s goal, and can help the group to identify key principles and generate innovative ideas. They tend to engage with the vision of the team, analyzing it rationally and objectively and offering options and possibilities.
INTPs do best on a team when they are given freedom to analyze logical problems in an original way. They are skilled at coming up with creative solutions, but don’t put much stock in the established way of doing things. Team members who are highly loyal to tradition may encounter friction with the INTP. Architects are typically independent thinkers who’d rather debate ideas than make small talk. They may become impatient if too much time is spent on pleasantries, and may put off team members who seek a more personal touch.', matches: [])

personality3 = Personality.create(abbreviation: 'ENTJ', description: 'Extraverted, Intuitive, Thinking, and Judging. ENTJs are commanding team members who typically want to take charge. They are strategic thinkers with an intuitive sense of what needs to get done and how everyone can contribute. ENTJs typically have a clear vision and often see how systems can be improved. They may not want to take much time explaining themselves to others, and although the clarity of their ideas is often convincing, they may have power struggles with teammates who question their ability or authority to lead the team.
ENTJs are objective thinkers who are willing to consider many options, and typically listen to their teammates’ ideas openly. They are good at synthesizing information and can often incorporate many ideas into a single plan of action. Although ENTJs are open to ideas, they are also decisive, and may take it upon themselves to deem when a discussion has been concluded. Personal issues rarely command the ENTJ’s attention, and may be neglected in their drive to finalize a concept. ENTJs want to create a definitive plan for change, and move decisively to action.', matches: [])

personality4 = Personality.create(abbreviation: 'ENTP', description: 'Extraverted, Intuitive, Thinking, and Perceiving. ENTPs are ingenious, entrepreneurial team members who want to explore new and creative ideas. Flexible and adaptable, the ENTP wants to discover the best way to do something, and is often excited by an opportunity to innovate. ENTPs are generally energetic and optimistic, and confident in their ability to solve difficult problems. They often feel the best solutions come from skirting or even ignoring the rules, and rarely have much interest in adhering to the established procedures. They may have considerable friction with teammates who take a more traditional approach.
ENTPs are typically open-minded, and like to hear many perspectives on an issue. They are good at synthesizing information and often show a talent for incorporating the best of many ideas into one, unified concept. However, they can be competitive, and sometimes like to take the credit for a team’s successes. They are rarely good at hammering out details, and may want to take ownership for the group’s overall direction, while leaving the exact specifications of the plan to their teammates.', matches: [])

personality5 = Personality.create(abbreviation: 'INFJ', description: 'Introverted, Intuitive, Feeling, and Judging. INFJs are creative solvers of people problems, and bring innovative ideas for fostering human potential. They are usually perceptive in observing the talents of others, and good at encouraging teammates to contribute their skills. They are mindful of group process, listening attentively to the opinions of others and synthesizing varied priorities to create a unified vision. Because they prefer to accommodate all points of view, Counselors may have trouble on very competitive or conflictual teams.
On a team, the INFJ acts as a source of quiet inspiration and vision, and provides clarity of purpose to the group. INFJs seek meaning and truth, and will reflect on ideas to create a deeper understanding. Although they don’t often call attention to themselves, they can provide insight into the ethical and humanitarian issues at hand, and can often elegantly articulate the group’s mission. Counselors work best on a supportive team where they can consider issues of ethics and values and act with integrity. Teams which move to act quickly without taking time to reflect may alienate the INFJ.', matches: [])

personality6 = Personality.create(abbreviation: 'INFP', description: 'Introverted, Intuitive, Feeling, and Perceiving. INFPs are supportive and imaginative team members who contribute by understanding the ideals of their teammates and working to bring unity to the group’s mission. They listen openly to many points of view, and are talented at coming up with creative solutions that incorporate the ideas and priorities of everyone involved. They are flexible and innovate thinkers, and are willing to consider almost any option, so long as it is congruent with their values.
INFPs do best on a team that is guided by vision, and want to have an authentic understanding of the team’s purpose. They want to have team members who are similarly committed to a cause, and who are willing to explore the possibilities for achieving their ideals. Teams which are highly oriented to action, without considering the deeper issues or the alternative options, may alienate the INFP. INFPs want an environment of mutual support and acceptance, and may have trouble on teams where there is much conflict or competition. Judgment and negativity tend to stifle their talent for creative problem-solving.', matches: [])

personality7 = Personality.create(abbreviation: 'ENFJ', description: 'Extraverted, Intuitive, Feeling, and Judging. ENFJs are collaborative, inspirational team members who are interested in working together to implement plans for progress. ENFJ team members work from supportive relationships as their foundation; they are skilled at understanding the needs and priorities of others and talented at building consensus. ENFJs have a natural enthusiasm, and tend to engage their team members in their vision.
Because they are so oriented to cooperation, ENFJs can be ineffective on teams in conflict; they may become so engaged with trying to create harmony that they neglect to make an objective evaluation. Although they usually have a strong sense of purpose, they are more people-focused than task-focused, and will prioritize the growth and development of others throughout the process. ENFJs sometimes need to refocus on the task at hand, as they can spend so much time mentoring and encouraging others that they forget the team’s primary goal.', matches: [])

personality8 = Personality.create(abbreviation: 'ENFP', description: 'Extraverted, Intuitive, Feeling, and Perceiving. ENFPs are enthusiastic, involved team members who are interested in exploring the possibilities for innovation. They enjoy relating to people and hearing their ideas—the more imaginative, the better. Although they are open-minded, they are fundamentally grounded in a sense of values, and look for the principles and motivations behind their teammates’ ideas. ENFPs have little interest in rules, and will encourage their teammates to think outside the box to create a solution that is uniquely theirs. They want to encourage other people to be creative and find their own voice.
ENFPs are most focused on relationships and on ideas, and may have friction with more task-oriented teammates. They relish the task of brainstorming possibilities and options for a project, and are sometimes reluctant to settle on a course of action and move on. They typically shy away from taking on responsibility for details, and can best contribute to a team with their considerable interpersonal skills. They are energetic in their commitment to the group’s mission, and are often good at motivating others and encouraging them to use their talents.', matches: [])

personality9 = Personality.create(abbreviation: 'ISTJ', description: 'Introverted, Sensing, Thinking, and Judging. ISTJs are dependable, task-oriented team members. They tend to clarify goals in specific, concrete terms, and look for established standards by which to measure the team’s outcomes. ISTJs prefer a structured team environment where the rules are clear and everyone has a specific set of duties. They work systematically and examine work meticulously, making sure that the details are correct and that the team’s product meets expectations.
ISTJs are very task focused and generally do not want to spend much time debating process; they prefer to just get on with it. Similarly, too much abstract discussion of concepts without a clear action plan will tend to irritate the ISTJ. ISTJs are businesslike in their approach and often have little patience for team members who want to discuss emotions or relationships. They tend to feel that addressing personal issues in a work environment is inappropriate and interferes with the team’s productivity.', matches: [])

personality10 = Personality.create(abbreviation: 'ISFJ', description: 'Introverted, Sensing, Feeling, and Judging. ISFJs are supportive, organized team members who attend to the needs of the people around them and follow procedures to get things done. ISFJs are not often interested in leading a team, but may naturally take on the role of group secretary, keeping meticulous notes and accurately recalling facts and details that are important to the group process.
ISFJs are sensitive to the concerns and emotions of others and do best on cooperative teams where there is not too much conflict. ISFJs typically feel most secure on a team where everyone adheres to established rules and procedures; they generally believe that people get along best when they all follow the rules. Team members who question the rules—or worse, ignore them outright—may upset the ISFJ, who wants a harmonious, predictable environment.', matches: [])

personality11 = Personality.create(abbreviation: 'ESTJ', description: 'Extraverted, Sensing, Thinking, and Judging. ESTJs are take-charge types who bring order and industrious energy to a team, focusing on opportunities to implement structure and take decisive action. ESTJs don’t mince words, sharing their objective evaluation of the situation directly and honestly. They are hard workers, productive and oriented to results, and expect others to fall in step with their methodic determination.
ESTJs are very task focused and may become impatient with colleagues who want to discuss things for too long before deciding on action steps, especially if the discussion is overly abstract or theoretical. They will tend to try to take the lead in making a decision and moving on with a concrete plan of action. ESTJs are consummate planners with respect for schedules and deadlines, and are reluctant to stray from the plan. They want to know the established procedure, and may be annoyed by team members who don’t follow the rules.', matches: [])

personality12 = Personality.create(abbreviation: 'ESFJ', description: 'Extraverted, Sensing, Feeling, and Judging. ESFJs enjoy the process of teamwork, and engage with others to create an environment of caring and support. They are concerned with getting everyone to contribute, and want to make all team members feel included and valued. ESFJs value cooperation and a harmonious team environment. They tend to solicit opinions from everyone and try to organize the tasks of the team to accommodate the needs and priorities of all involved.
ESFJs do best on a structured team, where everyone can be given a well-defined task and the rules of the game are agreed upon. They want to appreciate their teammates’ contributions, but find this easier when those contributions conform to established guidelines. They may have more difficulty with teammates who want to bend the rules or try something new.
ESFJs are most effective when their teams are cooperative and free of conflict. They often do well at bringing everyone together, and may be distracted from the task at hand if there is conflict or competition between team members.', matches: [])

personality13 = Personality.create(abbreviation: 'ISTP', description: 'Introverted, Sensing, Thinking, and Perceiving. ISTPs are practical, task-oriented team members who are usually more focused on the problem at hand than the people involved. They tend to look for ways to contribute with immediate action, and are talented, straightforward troubleshooters. ISTPs rarely demand attention from the team, preferring instead to observe and jump in where they see an opportunity to get something done.
ISTPs bring an efficient energy to a team and usually take it upon themselves to take practical action where they see the need. Their rational analysis often cuts straight to the heart of a matter and helps others see how to move forward. However, they don’t tend to have much patience for abstract discussion, and may neglect the niceties of working with others. In fact, many ISTPs prefer to just do what needs to be done, rather than having to spend time informing or including others.', matches: [])

personality14 = Personality.create(abbreviation: 'ISFP', description: 'Introverted, Sensing, Feeling, and Perceiving. ISFPs are sensitive, helpful team members who look for opportunities to contribute in an immediate, practical way. They want to assist other people and provide support, and often take on the role of listener. Oriented to cooperation, the ISFP will look for ways to compromise and accommodate others. They tend to step in when others need help and are often prepared with specific, relevant data that can help the team understand the facts of the situation.
ISFPs are at their best when they can work with others in a supportive, action-oriented role. They excel at creatively solving problems to meet people’s immediate needs. ISFPs shy away from theory and future projections, and may become impatient with ideas that have no concrete benefit for people. ISFPs are characteristically unassuming, and may be reluctant to advocate strongly for their own perspective on a team. They can become frustrated with team members who are domineering or competitive, and do best on a caring, egalitarian team where everyone’s contribution is appreciated.', matches: [])

personality15 = Personality.create(abbreviation: 'ESTP', description: 'Extraverted, Sensing, Thinking, and Perceiving. ESTPs are enthusiastic participants who enjoy identifying resources and moving dynamically through problems to find practical solutions. They’re often great in a crisis, when their flexibility and action orientation makes them a clear head in the crowd. They may act as the voice of reason and will often point the group toward using available means to take immediate action.
ESTPs often want to keep interactions fun and casual on a team, and may have conflict with team members who are overly serious or insist that things be done a particular way. ESTPs prefer to keep things open-ended and flexible, and colleagues who want to lock into a plan may find resistance from the ESTP, especially if the ESTP does not see immediate, concrete benefits to the proposed action. They do best when they’re allowed to solve problems in their own practical, no-nonsense way, without a lot of imposed structure or rules.', matches: [])

personality16 = Personality.create(abbreviation: 'ESFP', description: 'Extraverted, Sensing, Feeling, and Perceiving. ESFPs are fun-loving team members who bring a sense of humor to the process. ESFPs simply love socializing with people, and typically see teamwork as a chance to interact and engage in a lighthearted way. They may not seem particularly driven or task-oriented to their teammates, but they keep an eye out for the needs of others, and offer assistance and support in a practical, down-to-earth way.
ESFPs are at their best when they can work on immediate, practical problems, without having to be too serious about the task at hand. They are good at facilitating cooperation, and often have a talent for listening to all points of view on a team with an open mind. They often see the talents that others can contribute to a team, and with their engaging enthusiasm, can get other people motivated to contribute. ESFPs may be less effective on teams which are competitive rather than cooperative. They may experience friction with teammates that insist on being very task-focused and don’t leave room for fun. ESFPs tend to lose interest in abstract discussions, and may have trouble with teams who spend a lot of time theorizing and little time taking action.', matches: [])

personality17 = Personality.create(abbreviation: 'no_personality', description: '', matches: [])

puts "done seeding personalities!"

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
photo = URI.open('https://images.unsplash.com/photo-1526560244950-1a3c1ace48f9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2627&q=80')
team1.photo.attach(io: photo, filename: 'team.png', content_type: 'image/png')

team2 = Team.create(name: "Lyon Lions", description: "We are team of like-minded coders from Lyon.")
photo = URI.open('https://images.unsplash.com/photo-1526663089957-f2aa2776f572?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80')
team2.photo.attach(io: photo, filename: 'team2.png', content_type: 'image/png')

team3 = Team.create(name: "Maastricht Masters", description: "We are team of like-minded coders from Maastricht.")
photo = URI.open('https://images.unsplash.com/photo-1521737852567-6949f3f9f2b5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1330&q=80')
team3.photo.attach(io: photo, filename: 'team3.png', content_type: 'image/png')

team4 = Team.create(name: "Frankfurt Foodies", description: "We are team of like-minded coders from Frankfurt.")
photo = URI.open('https://images.unsplash.com/photo-1558403194-611308249627?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
team4.photo.attach(io: photo, filename: 'team4.png', content_type: 'image/png')
puts "done seeding teams!"

puts "Start seeding memberships..."
Membership.create(user: user1, team: team1, owner: false, status: 0)
Membership.create(user: user1, team: team2, owner: true, status: 1)
Membership.create(user: user1, team: team3, owner: false, status: 0)
Membership.create(user: user1, team: team4, owner: false, status: 0)

Membership.create(user: user2, team: team1, owner: true, status: 1)
Membership.create(user: user2, team: team2, owner: false, status: 0)
Membership.create(user: user2, team: team3, owner: false, status: 0)
Membership.create(user: user2, team: team4, owner: false, status: 0)

Membership.create(user: user3, team: team1, owner: false, status: 0)
Membership.create(user: user3, team: team2, owner: false, status: 0)
Membership.create(user: user3, team: team3, owner: true, status: 1)
Membership.create(user: user3, team: team4, owner: false, status: 0)

Membership.create(user: user4, team: team1, owner: false, status: 0)
Membership.create(user: user4, team: team2, owner: false, status: 0)
Membership.create(user: user4, team: team3, owner: false, status: 0)
Membership.create(user: user4, team: team4, owner: true, status: 1)
puts "done seeding memberships!"

puts "Start seeding questions..."
question1 = Question.create(custom: true, content: "What time do you prefer to work?", category: "Working hours")
question2 = Question.create(custom: true, content: "What do you like to do after work?", category: "Hobbies")
question3 = Question.create(custom: true, content: "How do you prefer to be contacted?", category: "Communication")
question4 = Question.create(custom: true, content: "When do you prefer to receive feedback?", category: "Feedback")
question5 = Question.create(custom: true, content: "How do you prefer to receive feedback?", category: "Feedback")
question6 = Question.create(custom: true, content: "What is your work space situation?", category: "Work style")
question7 = Question.create(custom: true, content: "On what kind of tasks do you like to work?", category: "Work style")
question8 = Question.create(custom: true, content: "Do you prefer to work together or alone?", category: "Work style")
question9 = Question.create(custom: true, content: "What is your preferred team meeting platform?", category: "Communication")
question10 = Question.create(custom: true, content: "When is the ideal time for you to take your lunch break?", category: "Working hours")
question11 = Question.create(custom: true, content: "How do you spend your holidays?", category: "Hobbies")

p_question1 = Question.create(custom: false, content: "Where do you get your energy from?", category: "Personality")
p_question2 = Question.create(custom: false, content: "How do you perceive the world & how do you gather information?", category: "Personality")
p_question3 = Question.create(custom: false, content: "How do you usually make decisions?", category: "Personality")
p_question4 = Question.create(custom: false, content: "To what extent do you like planning ahead?", category: "Personality")

puts "done seeding questions!"

puts "Start seeding answers..."
Answer.create(content: "I prefer to start in the early morning", question: question1)
Answer.create(content: "I prefer to start in the late morning", question: question1)
Answer.create(content: "I prefer to start in the afternoon", question: question1)
Answer.create(content: "I don't have a preference", question: question1)

answer5 = Answer.create(content: "Go for drinks with friends", question: question2)
answer6 = Answer.create(content: "Relax & have some me-time", question: question2)
answer7 = Answer.create(content: "Sports", question: question2)
answer8 = Answer.create(content: "Spend time with my family", question: question2)

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

Answer.create(letter: "E", question: p_question1, content: "I am very sociable and get energy from spending time with others. I usually talk a lot and often start conversations. I tend to speak before I think. I have a lot of friends and many different interests.")
Answer.create(letter: "I", question: p_question1, content: "I like quiet environments and get energy from spending time alone. I hardly ever start conversations but would rather wait for others to do so. I have a few deep friendships.")

Answer.create(letter: "S", question: p_question2, content: "I pay attention to details and enjoy making and creating things. I prefer to do things the established way. I focus on what is real in the present.")
Answer.create(letter: "N", question: p_question2, content: "I focus more on the big picture than on details. I prefer to try out new ideas and ways of doing things. I like to dream and think about what is possible in the future.")

Answer.create(letter: "T", question: p_question3, content: "When making decisions, I mostly base them on logic. I am interested in things & ideas and I am rather scientific in describing the world.")
Answer.create(letter: "F", question: p_question3, content: "When making decisions, I mostly base them on my values and use my heart. I am interested in people & emotions and I am rather poetic in describing the world.")

Answer.create(letter: "J", question: p_question4, content: "I am very organized and structured. I always make plans in advance and stick to them. I like being in control of my life and like finalizing decisions.")
Answer.create(letter: "P", question: p_question4, content: "I am usually casual and relaxed. I like going with the flow and can adapt my plans quickly. I like to let life happen and like to leave decisions open so that I can find more information.")

Answer.create(content: "On the beach - doing nothing besides reading & eating.", question: question11)
Answer.create(content: "In the mountains to hike or skiing in the winter.", question: question11)
Answer.create(content: "Exploring a new country and culture", question: question11)
Answer.create(content: "At home - enjoying my garden.", question: question11)

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
