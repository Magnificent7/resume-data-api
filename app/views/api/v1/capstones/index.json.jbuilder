json.array! @capstones.each do |capstone|
  json.student_id capstone.student_id
  json.name capstone.name
  json.url capstone.url
  json.screenshot capstone.screenshot
  json.description capstone.description
end
