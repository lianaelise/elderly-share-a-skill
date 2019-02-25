class Student < User
  has_many :appointments
  mount_uploader :picture, PhotoUploader
end
