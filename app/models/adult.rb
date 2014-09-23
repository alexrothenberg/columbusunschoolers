class Adult < ActiveRecord::Base
  belongs_to :family

  def name
    "#{first_name} #{last_name}"
  end
end
