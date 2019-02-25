# Single Table Inheritance
class Teacher < User
  has_many :skills
  has_many :subjects, through: :skills
  has_many :appointments
  # mount_uploader :picture, PhotoUploader
end
