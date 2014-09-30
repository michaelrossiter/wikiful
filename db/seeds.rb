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
		{ category_name: 'History'}, {category_name: 'Biology'}, {category_name: 'Literature'},
		{ category_name: 'Mathematics'}, { category_name: 'Music Theory'}, { category_name: 'Computer Science'},
		{ category_name: 'Sociology'}, {category_name: 'Chemistry'}
	])

# create 50 articles, with random titles, 250 words of content, and
# randomly assign one of the categories above to each article
for i in 0..49
	title = Faker::Lorem.sentence(rand(2..10)).chomp('.')
	text = Faker::Lorem.paragraph(word_count=250)

	# randomly assign one of the categories we just created 
	category = Category.first(offset: rand(Category.count)) 
	a = Article.create(title: title, text: text, categories: [category,])
end