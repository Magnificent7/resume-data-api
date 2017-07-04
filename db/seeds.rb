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