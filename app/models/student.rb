class Student < ApplicationRecord
  has_many :educations
  has_many :experiences
  has_many :skills
  has_many :capstones
end
