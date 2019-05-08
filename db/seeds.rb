# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sysAdmin = User.create({name: "Son", email: "youwish@protonmail.com", password: "youwish"})
Habit.create({name: "MAKE YOUR DAMN BED", user: sysAdmin})
Habit.create({name: "DO THE DAMN DISHES", user: sysAdmin})
Habit.create({name: "PUT YOUR DAMN CLOTHES AWAY", user: sysAdmin})