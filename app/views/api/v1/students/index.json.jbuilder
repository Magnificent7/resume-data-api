json.array! @students.each do |student|
  json.id student.id
  json.first_name student.first_name
  json.last_name student.last_name
  json.email student.email
  json.password student.password_digest
  json.phone_number student.phone_number
  json.short_bio student.short_bio
  json.linkedin_url student.linkedin_url
  json.twitter_handle student.twitter_handle
  json.website_url student.website_url
  json.resume_url student.resume_url
  json.github_url student.github_url
  json.photo_url student.photo_url
  json.capstones student.capstones.each do |capstone|
    json.name capstone.name
    json.url capstone.url
    json.screenshot capstone.screenshot
    json.description capstone.description
  end

  json.educations student.educations.each do |education|
    json.start_date education.start_date
    json.end_date education.end_date
    json.degree education.degree
    json.university_name education.university_name
  end


end


