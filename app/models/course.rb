class Course < ActiveRecord::Base
  has_many :volunteers
  has_many :students
end
