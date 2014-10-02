namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Michael Rossiter",
                 email: "m_sloanrossiter@mba.berkeley.edu",
                 password: "04kerry1",
                 password_confirmation: "04kerry1",
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