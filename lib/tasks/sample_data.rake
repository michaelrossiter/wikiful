namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Michael Rossiter",
                 email: "michael.b.s.rossiter@gmail.com",
                 year: 2015,
                 password: "04kerry1",
                 password_confirmation: "04kerry1",
                 admin: true,
                 user_type: "Admin",
                 school: "Berkeley Haas")
    99.times do |n|
      name      = Faker::Name.name
      email     = "example-#{n+1}@railstutorial.org"
      year      = rand(2014..2018)
      password  = "password"
      user_type = "Student"
      school    = ["Berkeley Haas", "Harvard Business School", "Stanford GSB", "Dartmouth Tuck", "Chicago Booth"].sample
      User.create!(name: name,
                   email: email,
                   year: year,
                   password: password,
                   password_confirmation: password,
                   user_type: user_type,
                   school: school)
    end
  end
end