json.array! @skills.each do |skill|
  json.student_id skill.student_id
  json.skill_name skill.skill_name
end
