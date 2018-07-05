# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create!([
  {name: 'Admin', is_admin: true, email: "admin@example.com"},
  {name: 'John', is_admin: false, email: "john@example.com"}
  ])

categories = Category.create([
  {name: 'Programming'},
  {name: 'Math'},
  {name: 'History'}
])

tests = Test.create!([
  {title: 'Programming languages', level: 2, author: users[0], category_id: categories[0].id},
  {title: 'Quick maths', level: 1, author: users[0], category_id: categories[1].id}
])

questions = Question.create!([
  {title: 'Favorite language', body: 'What is your favorite programming language?', test_id: tests[0].id},
  {title: 'Rails', body: 'What is Ruby on Rails?', test_id: tests[0].id},
  {title: 'Rails uses', body: 'What is Rails designed for?', test_id: tests[0].id},
  {title: '2 + 2', body: '2 + 2 = ?', test_id: tests[1].id},
  {title: '4 - 1', body: '4 - 1 = ?', test_id: tests[1].id}
])

answers = Answer.create!([
  {title: 'C++', correct: false, question_id: questions[0].id},
  {title: 'Ruby', correct: true, question_id: questions[0].id},
  {title: 'Haskell', correct: false, question_id: questions[0].id},
  {title: 'Web application framework', correct: true, question_id: questions[1].id},
  {title: 'An Android app', correct: false, question_id: questions[1].id},
  {title: 'Making web applications', correct: true, question_id: questions[2].id},
  {title: 'Managing databases', correct: false, question_id: questions[2].id},
  {title: '4', correct: true, question_id: questions[3].id},
  {title: '5', correct: false, question_id: questions[3].id},
  {title: '3', correct: true, question_id: questions[4].id},
  {title: '4', correct: false, question_id: questions[4].id}
])

test_progresses = TestProgress.create!([
  {test_id: tests[0].id, user_id: users[1].id},
  {test_id: tests[1].id, user_id: users[1].id}
  ])
