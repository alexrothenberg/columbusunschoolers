class CourseChild < ActiveRecord::Base
  belongs_to :course
  belongs_to :child
end
