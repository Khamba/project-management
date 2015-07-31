# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: "John B")
User.create!(name: "Peter M")
User.create!(name: "Luke S")
User.create!(name: "Joe P")
User.create!(name: "Mark H")
User.create!(name: "Robert D")
User.create!(name: "Matthew K")

def random_date
	Date.today - rand(1..4)
end

User.all.each do |user|
	n = rand(3..20)
	n.times do |i|
		d = random_date
		r = rand(2..5)
		est_hrs = (r)*rand(4.0..8.0).round(1).round(1)
		hrs_spt = (est_hrs - rand(6.0...est_hrs)).round(1)
		user.tasks.build(description: "Task #{i+1}", start_date: d, end_date: d + r, estimated_hours: est_hrs, hours_spent: hrs_spt )
		user.save!
	end
end