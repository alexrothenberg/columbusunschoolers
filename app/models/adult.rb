class Adult < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :family
  has_many :course_adults
  has_many :courses, through: :course_adults

  def name
    "#{first_name} #{last_name}"
  end
end
