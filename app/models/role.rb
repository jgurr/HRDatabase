class Role < ActiveRecord::Base
  has_many :divisions
  has_many :employees

  has_many :titles
  
  attr_accessible :division_id, :employee_id, :salary, :title_id, :name, :open, :current, :division, :employee, :title

  validates :salary, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10000000 }

end
