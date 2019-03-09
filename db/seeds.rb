# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

disco_night_fundraiser = Project.create(
  title: "Disco Night Fundraiser for the Animal Shelter",
  description: "Funding is from the local city government. Proceeds from this night will go to the local shelter.",
  final_deadline: DateTime.strptime("05/01/2019 18:00", "%m/%d/%Y %H:%M"),
  budget: 10000
)
disco_night_fundraiser.tasks.create(description: "Find a venue.", task_deadline: DateTime.strptime("04/01/2019 12:00", "%m/%d/%Y %H:%M"))
disco_night_fundraiser.tasks.create(description: "Gather 25 volunteers.", task_deadline: DateTime.strptime("04/01/2019 12:00", "%m/%d/%Y %H:%M"))
disco_night_fundraiser.tasks.create(description: "Find a catering company.", task_deadline: DateTime.strptime("04/01/2019 12:00", "%m/%d/%Y %H:%M"))

mothers_day_brunch = Project.create(
  title: "Mothers Day Brunch",
  description: "Funding is from the local city government. Proceeds from this night will go to the local kids organization.",
  final_deadline: DateTime.strptime("09/01/2019 18:00", "%m/%d/%Y %H:%M"),
  budget: 10000
)
mothers_day_brunch.tasks.create(description: "Find a restaurant.", task_deadline: DateTime.strptime("08/01/2019 11:00", "%m/%d/%Y %H:%M"))
mothers_day_brunch.tasks.create(description: "Gather 10 volunteers.", task_deadline: DateTime.strptime("08/01/2019 11:00", "%m/%d/%Y %H:%M"))
mothers_day_brunch.tasks.create(description: "Find 2 bartenders.", task_deadline: DateTime.strptime("08/01/2019 11:00", "%m/%d/%Y %H:%M"))
