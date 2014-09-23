class CourseAdult < ActiveRecord::Base
  belongs_to :course
  belongs_to :adult

  validates :role, inclusion: {
    in: ['volunteer', 'adult with child', 'teacher'],
    message: "%{value} is not a valid role"
  }
end
