class Title < ActiveRecord::Base
  belongs_to :role

  attr_accessible :name

  validates :name, presence: true, uniqueness: true
end
