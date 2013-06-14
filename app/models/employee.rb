class Employee < ActiveRecord::Base
  has_many :roles
  has_many :divisions, :through => :roles

  attr_accessible :dob, :name

  validates :dob, presence: true
  validates :name, presence: true, uniqueness: true
end
