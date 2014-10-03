namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Michael Rossiter",
                 email: "michael.b.s.rossiter@gmail.com",
                 password: "password",
                 password_confirmation: "password",
                 admin: true,
                 school: "UC Berkeley",
                 department: "Business")
    99.times do |n|
      name      = Faker::Name.name
      email     = "example-#{n+1}@thinkful.com"
      password  = "password"
      school    = SCHOOLS.sample
      department = DEPARTMENTS.sample
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password,
                   school: school,
                   department: department)
    end
  end
end