# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).


# Create 8 seed categories
categories = Category.create([
		{ name: 'History'}, {name: 'Biology'}, {name: 'Literature'},
		{ name: 'Mathematics'}, { name: 'Music Theory'}, { name: 'Computer Science'},
		{ name: 'Sociology'}, {name: 'Chemistry'}
	])

# create 50 articles, with random titles, 250 words of content, and
# randomly assign one of the categories above to each article
for i in 0..49
	title = Faker::Lorem.sentence(rand(2..5)).chomp('.')
	text = Faker::Lorem.paragraph(word_count=250)

	# Randomly assign one of the categories we just created.
  # The 'sample' method selects a random item from a collection.
	user = User.all.sample
	category = Category.all.sample
	a = user.articles.create(title: title, text: text, categories: [category,])
end