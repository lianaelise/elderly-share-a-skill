# Single Table Inheritance
class Teacher < User
  has_many :skills
  has_many :subjects, through: :skills
  has_many :appointments
  mount_uploader :picture, PhotoUploader

  accepts_nested_attributes_for :skills
end
