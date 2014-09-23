class Family < ActiveRecord::Base
  has_many :adults,   dependent: :destroy
  has_many :children, dependent: :destroy

  def name
    adults.first.last_name
  end

  def primary_adult
    adults.first
  end

  A_NUMBER_BIGGER_THAN_POSSIBLE_NUMBER_OF_ADULTS_IN_A_FAMILY=100
  def other_adults
    adults[1..A_NUMBER_BIGGER_THAN_POSSIBLE_NUMBER_OF_ADULTS_IN_A_FAMILY]
  end
end
