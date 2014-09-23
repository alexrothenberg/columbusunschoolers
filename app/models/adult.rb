class Adult < ActiveRecord::Base
  belongs_to :family
  has_many :course_adults
  has_many :courses, through: :course_adults

  def name
    "#{first_name} #{last_name}"
  end
end
