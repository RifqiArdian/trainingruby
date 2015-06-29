class Student < ActiveRecord::Base
  has_one :school
  has_many :homes
end
