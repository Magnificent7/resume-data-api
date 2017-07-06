# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do

  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name

  Student.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
    password_digest: "123456",
    phone_number: Faker::PhoneNumber.cell_phone,
    short_bio: Faker::Lorem.sentence,
    linkedin_url: Faker::Internet.domain_name,
    twitter_handle: "#{first_name}",
    website_url: Faker::Internet.domain_name,
    resume_url: Faker::Internet.domain_name,
    github_url: Faker::Internet.domain_name,
    photo_url: Faker::Internet.domain_name
    )

end 

40.times do
 Capstone.create(
    name: Faker::Name.first_name,
    description: Faker::Lorem.sentence,
    url: Faker::Internet.domain_name,
    screenshot: Faker::Internet.domain_name,
    student_id: rand(1...20)
    )
end

40.times do
 Education.create(
    start_date: Faker::Date.backward(2000),
    end_date: Faker::Date.backward(1000),
    degree: Faker::Job.field,
    university_name: Faker::Educator.university,
    details: Faker::Lorem.sentence,
    student_id: rand(1...20)
    )
end

40.times do
 Experience.create(
    start_date: Faker::Date.backward(2000),
    end_date: Faker::Date.backward(1000),
    title: Faker::Job.title,
    company: Faker::Company.name,
    details: Faker::Lorem.sentence,
    student_id: rand(1...20)
    )
end


200.times do
 Skill.create(
    skill_name: Faker::Superhero.power,
    student_id: rand(1...20)
    )
end


