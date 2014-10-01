namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Michael Rossiter",
                 email: "michael.b.s.rossiter@gmail.com",
                 password: "04kerry1",
                 password_confirmation: "04kerry1",
                 admin: true,
                 school: "UC Berkeley",
                 department: "Business")
    99.times do |n|
      name      = Faker::Name.name
      email     = "example-#{n+1}@railstutorial.org"
      password  = "password"
      school    = SCHOOLS.sample
      department = DEPARTMENT.sample
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password,
                   school: school,
                   department: department)
    end
  end
end