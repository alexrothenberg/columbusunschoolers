class Child < ActiveRecord::Base
  belongs_to :family

  before_create :use_family_name

  def use_family_name
    if last_name.nil?
      self.last_name = family.name
    end
  end

  def name
    "#{first_name} #{last_name}"
  end

  def age
    Date.today.year - birthday.year
  end
end
