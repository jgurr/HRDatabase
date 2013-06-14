class Division < ActiveRecord::Base
  has_many :roles
  has_many :employees, :through => :roles

  validates :name, presence: true, uniqueness:true
  
  attr_accessible :name
end
