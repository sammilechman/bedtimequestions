# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(email: 'admin@example.com', password: 'password123')

['brush my teeth', 'comb my hair'].each do |habit_example|
  habit = user.habits.create(title: habit_example)
  Goal.create(habit: habit, goal_type: 'boolean', comparator: 'equals', value: 1)
end
