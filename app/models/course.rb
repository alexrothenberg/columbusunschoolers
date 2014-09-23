class Course < ActiveRecord::Base
  has_many :course_adults,   dependent: :destroy
  has_many :course_children, dependent: :destroy

  has_many :adults,   through: :course_adults
  has_many :children, through: :course_children
end
