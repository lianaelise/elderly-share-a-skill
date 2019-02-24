# Single Table Inheritance
class Teacher < User
  has_many :skills
  has_many :subjects, through: :skills
end
